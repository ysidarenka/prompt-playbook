#!/usr/bin/env bash
# Works out the next semantic version and writes release notes.
#
# Usage: release.sh [auto|major|minor|patch] [notes-file]
#
# Prints (for $GITHUB_OUTPUT):
#   version=1.2.3
#   tag=v1.2.3
#   previous_tag=v1.2.2   (empty on the first release)
#   skip=true|false
#
# Version rules (when bump is "auto"):
#   - No earlier tag            -> 1.0.0
#   - "BREAKING CHANGE" or "type!:" in a commit, or a prompt file removed -> major
#   - "feat:" commit, or a new prompt file added                          -> minor
#   - anything else                                                       -> patch
#   - "[skip release]" in the latest commit message                       -> no release
set -euo pipefail

BUMP="${1:-auto}"
NOTES_FILE="${2:-release-notes.md}"
INITIAL_VERSION="1.0.0"
REPO_URL="${GITHUB_SERVER_URL:-https://github.com}/${GITHUB_REPOSITORY:-OWNER/REPO}"

# Markdown files that count as prompt entries: inside a category folder,
# not a README, and not in templates, sources, private notes or .github.
is_prompt_file() {
  local f="$1"
  [[ "$f" == *.md ]] || return 1
  [[ "$f" == */* ]] || return 1
  [[ "$(basename "$f")" == "README.md" ]] && return 1
  case "$f" in
    _templates/*|sources/*|private/*|.github/*) return 1 ;;
  esac
  return 0
}

# Reads the "title:" from a file's front matter at a given revision.
prompt_title() {
  local rev="$1" f="$2" title
  title="$(git show "${rev}:${f}" 2>/dev/null \
    | awk 'NR==1 && $0!="---"{exit} NR>1 && $0=="---"{exit} /^title:/{sub(/^title:[ ]*/,""); print; exit}')"
  title="${title%\"}"; title="${title#\"}"
  title="${title%\'}"; title="${title#\'}"
  [[ -n "$title" ]] && echo "$title" || basename "$f" .md
}

emit() { echo "$1=$2"; }

# ---------------------------------------------------------------------------
# Previous release
# ---------------------------------------------------------------------------
PREV_TAG="$(git tag --list 'v[0-9]*.[0-9]*.[0-9]*' --sort=-v:refname | head -n1 || true)"

if [[ -n "$PREV_TAG" ]]; then
  RANGE="${PREV_TAG}..HEAD"
  if [[ "$(git rev-list --count "$RANGE")" == "0" ]]; then
    echo "No new commits since $PREV_TAG; nothing to release." >&2
    emit skip true; exit 0
  fi
else
  RANGE="HEAD"
fi

if git log -1 --format=%B | grep -qiF '[skip release]'; then
  echo "Latest commit asks to skip the release." >&2
  emit skip true; exit 0
fi

# ---------------------------------------------------------------------------
# Collect changes
# ---------------------------------------------------------------------------
added=(); updated=(); removed=()
if [[ -n "$PREV_TAG" ]]; then
  while IFS=$'\t' read -r status path1 path2; do
    case "$status" in
      A)  is_prompt_file "$path1" && added+=("$path1") ;;
      M)  is_prompt_file "$path1" && updated+=("$path1") ;;
      D)  is_prompt_file "$path1" && removed+=("$path1") ;;
      R*) is_prompt_file "$path2" && updated+=("$path2") ;;
    esac
  done < <(git diff --name-status -M "$PREV_TAG" HEAD)
else
  while IFS= read -r f; do
    is_prompt_file "$f" && added+=("$f")
  done < <(git ls-files)
fi

breaking=(); features=(); fixes=(); docs=(); other=()
has_breaking=false; has_feat=false
while IFS=$'\x1f' read -r -d $'\x1e' sha subject body; do
  sha="${sha//$'\n'/}"
  [[ -z "$sha" ]] && continue
  [[ "$subject" =~ ^chore\(release\) ]] && continue
  line="- ${subject} ([\`${sha:0:7}\`](${REPO_URL}/commit/${sha}))"
  if [[ "$subject" =~ ^[a-zA-Z]+(\([^\)]*\))?!: ]] || grep -q 'BREAKING CHANGE' <<<"$body"; then
    has_breaking=true; breaking+=("$line")
  elif [[ "$subject" =~ ^feat(\([^\)]*\))?: ]]; then
    has_feat=true; features+=("$line")
  elif [[ "$subject" =~ ^fix(\([^\)]*\))?: ]]; then
    fixes+=("$line")
  elif [[ "$subject" =~ ^docs(\([^\)]*\))?: ]]; then
    docs+=("$line")
  else
    other+=("$line")
  fi
done < <(git log --no-merges --format='%H%x1f%s%x1f%b%x1e' $RANGE)

# ---------------------------------------------------------------------------
# Next version
# ---------------------------------------------------------------------------
if [[ -z "$PREV_TAG" ]]; then
  VERSION="$INITIAL_VERSION"
else
  IFS=. read -r MAJ MIN PAT <<<"${PREV_TAG#v}"
  if [[ "$BUMP" == "auto" ]]; then
    if $has_breaking || (( ${#removed[@]} > 0 )); then BUMP="major"
    elif $has_feat || (( ${#added[@]} > 0 )); then BUMP="minor"
    else BUMP="patch"
    fi
  fi
  case "$BUMP" in
    major) VERSION="$((MAJ + 1)).0.0" ;;
    minor) VERSION="${MAJ}.$((MIN + 1)).0" ;;
    patch) VERSION="${MAJ}.${MIN}.$((PAT + 1))" ;;
    *) echo "Unknown bump type: $BUMP" >&2; exit 1 ;;
  esac
fi
TAG="v${VERSION}"

if git rev-parse -q --verify "refs/tags/${TAG}" >/dev/null; then
  echo "Tag ${TAG} already exists." >&2; exit 1
fi

# ---------------------------------------------------------------------------
# Release notes
# ---------------------------------------------------------------------------
section_files() {
  local heading="$1" rev="$2"; shift 2
  (( $# == 0 )) && return
  echo "### ${heading}"; echo
  for f in "$@"; do
    local ref="$TAG"; [[ "$rev" != "HEAD" ]] && ref="$rev"
    echo "- **$(prompt_title "$rev" "$f")** · \`${f%%/*}\` · [\`${f}\`](${REPO_URL}/blob/${ref}/${f})"
  done
  echo
}
section_lines() {
  local heading="$1"; shift
  (( $# == 0 )) && return
  echo "### ${heading}"; echo
  printf '%s\n' "$@"; echo
}

{
  echo "## ${TAG} ($(date -u +%Y-%m-%d))"
  echo
  if [[ -z "$PREV_TAG" ]]; then
    echo "First release of the playbook."
  else
    echo "Changes since ${PREV_TAG}."
  fi
  echo
  echo "**Prompts:** ${#added[@]} added, ${#updated[@]} updated, ${#removed[@]} removed"
  echo
  section_lines "Breaking changes" "${breaking[@]}"
  section_files "New prompts" HEAD "${added[@]}"
  section_files "Updated prompts" HEAD "${updated[@]}"
  [[ -n "$PREV_TAG" ]] && section_files "Removed prompts" "$PREV_TAG" "${removed[@]}"
  section_lines "Features" "${features[@]}"
  section_lines "Fixes" "${fixes[@]}"
  section_lines "Documentation" "${docs[@]}"
  section_lines "Other changes" "${other[@]}"
  if [[ -n "$PREV_TAG" ]]; then
    echo "**Full changelog:** ${REPO_URL}/compare/${PREV_TAG}...${TAG}"
  else
    echo "**Browse this release:** ${REPO_URL}/tree/${TAG}"
  fi
} > "$NOTES_FILE"

emit skip false
emit version "$VERSION"
emit tag "$TAG"
emit previous_tag "$PREV_TAG"

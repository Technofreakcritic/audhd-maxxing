#!/usr/bin/env bash
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
skill_name="audhd-maxxing"
skill_file="$script_dir/SKILL.md"
# AUDHD_MAXXING_HOME is for isolated testing; normal installs use the user's home.
install_home="${AUDHD_MAXXING_HOME:-$HOME}"
claude_target="$install_home/.claude/skills/$skill_name"
agents_target="$install_home/.agents/skills/$skill_name"

if [[ ! -f "$skill_file" ]]; then
  printf 'Missing %s next to install.sh.\n' "$skill_file" >&2
  exit 1
fi

remove_skill() {
  local target
  for target in "$claude_target" "$agents_target"; do
    if [[ -e "$target" || -L "$target" ]]; then
      rm -rf -- "$target"
      printf 'Removed %s\n' "$target"
    else
      printf 'Not installed: %s\n' "$target"
    fi
  done
}

install_skill() {
  local target
  for target in "$claude_target" "$agents_target"; do
    mkdir -p -- "$target"
    cp -- "$skill_file" "$target/SKILL.md"
    printf 'Installed %s\n' "$target"
  done
}

case "${1:-}" in
  '') install_skill ;;
  --uninstall) remove_skill ;;
  -h|--help)
    printf 'Usage: %s [--uninstall]\n' "$(basename -- "$0")"
    ;;
  *)
    printf 'Unknown option: %s\nUsage: %s [--uninstall]\n' "$1" "$(basename -- "$0")" >&2
    exit 2
    ;;
esac

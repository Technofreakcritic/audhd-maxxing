# audhd-maxxing

`audhd-maxxing` is a portable agent skill for communication that supports combined autistic and ADHD needs. It resolves the common depth-versus-overwhelm tension by giving the answer first and delivering the rest in short, labelled chunks instead of a single dense explanation.

It uses literal, precise language, puts assumptions in view, and offers a task-coach pattern on request: a tiny next step, optional body doubling, momentum checks, and a `Parked:` list for useful distractions. It does not infer a diagnosis. It can also make progress more engaging through visible quick wins and restrained novelty framing.

## Install

From this folder:

```sh
./install.sh
```

This copies `SKILL.md` to both `~/.claude/skills/audhd-maxxing/` and `~/.agents/skills/audhd-maxxing/`. Re-running it safely refreshes both copies.

### Marketplace install

**Claude Code**

```text
/plugin marketplace add Technofreakcritic/audhd-maxxing
/plugin install audhd-maxxing@audhd-maxxing-marketplace
```

**Codex**

```sh
codex plugin marketplace add Technofreakcritic/audhd-maxxing --ref main
codex plugin add audhd-maxxing@audhd-maxxing-marketplace
```

To install manually, create either destination directory and copy `SKILL.md` into it.

```sh
mkdir -p ~/.claude/skills/audhd-maxxing
cp SKILL.md ~/.claude/skills/audhd-maxxing/SKILL.md
```

## Use

Ask normally once the skill is available. Say `deep dive` for maximum detail in short chunks. Say `audhd-maxxing on` or `/audhd-maxxing` to resume its style, and `audhd-maxxing off` or `normal mode` to suspend it.

For task coaching, state the task and where you are stuck. The response ends with one small `Next action:`.

## Uninstall

```sh
./install.sh --uninstall
```

This removes only this skill's two installation directories.

# audhd-maxxing — Agent Task List

Portable Agent Skill (SKILL.md + install.sh + README.md), installable on any Claude Code or Codex install.
AuDHD = autism + ADHD blended into one style; core tension to solve: exhaustive depth wanted, walls of text overwhelming.
Agent status: **complete** — no global installation performed.

## Setup & files

- [x] **SKILL.md** — YAML frontmatter: `name: audhd-maxxing` + `description` (third person, "Use when…", triggers only, ≤1024 chars frontmatter)
- [x] Body as a positive recipe (~250–400 words) covering the five modes:
  - Direct & structured (conclusion first, numbered steps, assumptions stated, no small talk)
  - Literal precision (exact terms, no idioms, most-literal reading stated in one line)
  - Deep-dive mode ("deep dive" forces max depth — delivered in short chunked sections, never one wall)
  - Task-breaking coach (next tiny action, body-doubling, momentum checks, "Parked:" list for rabbit holes, reply ends with the single next action)
  - Hyperfocus fuel (quick wins first, novelty framing, gamified progress)
- [x] Toggle section: "audhd-maxxing off" / "normal mode" suspends; "audhd-maxxing on" / `/audhd-maxxing` resumes
- [x] Quick-reference table
- [x] **install.sh** — self-locating, installs to `~/.claude/skills/audhd-maxxing/` AND `~/.agents/skills/audhd-maxxing/`, idempotent, `--uninstall` flag
- [x] **README.md** — what it does (incl. how it handles the depth-vs-overwhelm tension), manual install, usage & toggles, uninstall

## Testing (TDD for skills)

- [x] RED (baseline): fresh subagent answers the DNS + overwhelm scenario with NO skill — record default shape
- [x] GREEN: same scenario WITH the skill text — verify conclusion-first, chunked structure, literal, one next action, tangents parked
- [x] REFACTOR: reword and re-test once if the skill didn't change the behavior (not needed: behavior changed as intended)

## Reporting

- [x] Final report: files created, SKILL.md word count, baseline vs. post-skill behavior, refactor made, nothing installed globally

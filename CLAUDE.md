# Claude — Instructions for This Repository

This repository contains Erik Wilde's presentations (2013–present): conference
talks, workshops, webinars, and university courses, mostly around APIs, OpenAPI,
API strategy and governance, and (recently) APIs and AI / agent experience.

Online versions live at <http://dret.net/netdret/publications#presentations>.

---

## Ground Rule

**Only make changes outside the `Claude/` directory if explicitly asked.**
Do not create work logs, session notes, outlines, or other artefacts anywhere
in the repo. The `Claude/` directory holds only the two reference files
(`README.md` and `presentations.md`).

---

## Quick Start

| Resource | What it contains |
|----------|-----------------|
| [`Claude/README.md`](Claude/README.md) | Full technical orientation: repo layout, Hotspot build system, XML format, layouts, single vs. multi-presentation dirs |
| [`Claude/presentations.md`](Claude/presentations.md) | Chronological list of all ~215 presentations with relative links and online URLs |

Read `Claude/README.md` first if you are picking up this repo cold.

---

## Agent Notes

- Each event directory has a `README.md` with the talk title and online URL —
  fastest way to identify a presentation without reading the XML.
- The XML source file is the source of truth for slide content.
- `modules/modules.xml` is very large (300+ KB) — read in chunks or grep for
  specific content rather than loading it whole.
- When Erik says "the hotspot layout" he means the `<?hotspot layout="...">` PI
  at the top of the XML file.
- The lectures folder is mounted inside the VM at
  `/sessions/.../mnt/lectures/`, so Bash `cp` commands work for file operations
  that the filesystem tools can't handle (e.g. copying binary images).
- **XML files use CRLF line endings.** Never use the `mcp__filesystem` edit
  tools to modify XML files directly — they silently convert CRLF to LF and
  corrupt the entire file from Git's perspective. Always use a Python script via
  Bash that reads and writes the file in binary mode (`'rb'`/`'wb'`) to preserve
  line endings exactly.

### Image Management

Images are integral to slide artwork and must travel with the slides:

- **Adding slides from another presentation:** Copy every image referenced by
  those slides (`<img src="...">`) from the source `img/` into the target
  `img/`. Use Bash `cp` for this.
- **Removing slides:** Check whether the removed slides' images are used
  anywhere else in the same presentation. If not, remove them from `img/` too.
- Shared images that already exist in the target `img/` (e.g. `end.jpg`,
  `jentic.svg`, logo files) do not need to be re-copied.

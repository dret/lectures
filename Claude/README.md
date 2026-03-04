# Claude — Technical Reference

Detailed reference for working with this repository. For instructions and agent
notes, see [`CLAUDE.md`](../CLAUDE.md) at the repo root.

---

## Repository Layout

```
lectures/
├── CLAUDE.md           ← agent instructions (read this first)
├── Claude/             ← agent working space (this directory)
├── modules/            ← shared reusable slide modules (HTML partials)
│   ├── modules.xml     ← the big shared module library (very large)
│   ├── src/            ← code/data examples referenced in modules
│   └── *.html          ← individual rendered module files
├── saxon/              ← Saxon XSLT processor JARs (shared build dependency)
│   └── saxon.jar       ← the main one invoked by make.sh
├── <event-directory>/  ← one directory per event/series (see below)
│   ├── README.md       ← human-readable description and online URL
│   ├── <name>.xml      ← the source file (hotspot XML format)
│   ├── make.sh         ← build script (runs Saxon)
│   ├── hotspot/        ← git submodule with the XSLT engine + layouts
│   │   ├── hotspot/    ← the XSLT system proper
│   │   │   ├── hotspot.xsl   ← main transform
│   │   │   ├── layout/       ← visual themes (see below)
│   │   │   └── schemas/      ← XSD for the XML format
│   │   └── kilauea/    ← JavaScript slideshow engine
│   ├── img/            ← images used in slides
│   ├── src/            ← code/data listings referenced in slides
│   ├── index.css       ← generated CSS index (multi-talk dirs)
│   ├── index.shtml     ← generated landing page (multi-talk dirs)
│   ├── toc.html        ← generated table of contents (multi-talk dirs)
│   └── <talk-id>.html  ← one generated HTML file per presentation
└── ...
```

---

## The Hotspot System

**Hotspot** is a custom XML-to-HTML presentation system built and maintained by
Erik Wilde. It lives as a git submodule inside each event directory.

### Build

```sh
# In any event directory:
( cd hotspot ; git pull origin master )   # update the engine submodule
git pull origin master                    # update the talk content
java -jar ../saxon/saxon.jar <name>.xml hotspot/hotspot/hotspot.xsl messages=informative
```

The Saxon XSLT processor lives at `../saxon/saxon.jar` (relative to the event
directory). The main transform is `hotspot/hotspot/hotspot.xsl`.

### XML Source Format

Root element: `<hotspot xmlns="http://dret.net/xmlns/hotspot/1">`

Processing instructions at the top of each file control layout and paths:

```xml
<?xml-stylesheet type="text/xsl" href="hotspot/hotspot/hotspot.xsl"?>
<?hotspot layout-path="hotspot/hotspot/layout" ?>
<?hotspot kilauea-path="hotspot/kilauea" ?>
<?hotspot layout="jentic" ?>
```

Key structural elements:

| Element | Purpose |
|---------|---------|
| `<configuration>` | Link settings, image/listing paths, outline options |
| `<license>` | License HTML block shown on slides (CC BY 4.0 in recent work) |
| `<title>` | Event/series title |
| `<author>` | Default author (Erik Wilde) |
| `<affiliation>` | Author's affiliation at time of talk |
| `<copyright>` | Copyright string |
| `<date short="YYYY-MM-DD">` | Event date |
| `<toc name="toc.html">` | Generates a TOC file (used in multi-talk dirs) |
| `<presentation id="...">` | One presentation → one output HTML file |
| `<part id="...">` | Section / chapter within a presentation |
| `<slide id="...">` | Individual slide |
| `<img src="..." href="..." class="...">` | Images (href makes them clickable) |
| `<link href="...">` | Cross-reference to another slide by id |

Within `<presentation>`, `<title>`, `<author>`, `<affiliation>`, `<date>`, and
`<copyright>` can all be overridden (useful when one XML file contains multiple
talks given on different dates or by different people).

### Layouts (Visual Themes)

Layouts live in `hotspot/hotspot/layout/` and correspond to affiliations or
event families over time:

| Layout | Era / Context |
|--------|---------------|
| `ethz`, `unibas`, `unibe`, `w3c-blue`, `ischool`, `ischool+usi` | Academic period (ETH Zürich, UC Berkeley, Uni Basel/Bern, W3C) |
| `api360`, `catalyst`, `apiacademy`, `apiacademy-new` | CA Technologies / API Academy period |
| `goodapi` | GoodAPI period |
| `youtube`, `getting-apis-to-work`, `malmoe` | Axway / YouTube channel period |
| `jentic` | Current — Jentic branding |
| `oai-track` | OpenAPI Initiative track/summit branding |
| `innoq` | INNOQ event branding |
| `apimasters`, `oreilly`, `siemens`, `slidy`, `zurich` | Specific clients/events |

### Single vs. Multi-Presentation Directories

- **Single talk:** The XML has one `<presentation>` → one HTML output file,
  usually named `index.html`. No `<toc>`.
- **Multi-talk:** The XML has several `<presentation>` elements (one per talk or
  session at the same event). A `<toc name="toc.html">` generates an HTML index.
  There will also be `index.shtml` and `index.css`.

---

## Files in This Directory

| File | Contents |
|------|---------|
| `README.md` | This file — detailed technical reference |
| `presentations.md` | Full chronological list of all presentation directories with links |

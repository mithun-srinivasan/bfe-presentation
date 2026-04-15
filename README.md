# BFE Presentation

An offline Reveal.js presentation for **Biology for Engineers**, focused on **biomimicry in computing** and **eye-inspired image recognition**.

## Overview

This repository contains a self-contained presentation deck built with local Reveal.js assets, bundled images, syntax highlighting, speaker notes, and PDF export support. It is designed to work without an internet connection.

## Presentation Topic

**Biomimicry in Computing: Eye-Inspired Image Recognition**

The deck covers:

- the problem with traditional computer vision pipelines
- how biomimicry improves engineering design
- the structure and function of the human eye
- the mapping between the human eye and an AI vision system
- a simple recognition pipeline using preprocessing, feature extraction, and CNNs
- results, applications, SDGs, and future scope

## Team

- S. Mithun
- S. Mohamad Shahjan
- S. Sasivarman

## Features

- Fully offline presentation with no CDN dependencies
- Reveal.js-powered slide transitions and auto-animations
- Responsive layout for laptop and projector displays
- Speaker notes support
- Syntax-highlighted code snippets
- Local PDF export
- Embedded visual assets for the human eye and CNN architecture

## How to Run

### Recommended: local web server

Run a lightweight server from the project root:

```bash
python -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

### Direct file open

You can also open `index.html` directly in a browser. For the most reliable PDF export and navigation behavior, use a local server.

## Presentation Controls

- `Arrow keys` or `Space` to move between slides
- `Esc` for the overview mode
- `S` for speaker notes
- `F` for fullscreen
- `Ctrl+P` or the on-screen **Export PDF** button for print/PDF mode

## Repository Structure

```text
.
├── index.html
├── README.md
├── OFFLINE_SETUP.md
├── download-libs.ps1
├── images/
└── libs/
	└── reveal.js/
```

## Offline Setup

The presentation already includes the required Reveal.js distribution and plugins locally:

- `libs/reveal.js/dist/reveal.js`
- `libs/reveal.js/dist/reveal.css`
- `libs/reveal.js/dist/theme/white.css`
- `libs/reveal.js/plugin/highlight/`
- `libs/reveal.js/plugin/notes/`
- `libs/reveal.js/plugin/zoom/`

Refer to `OFFLINE_SETUP.md` for the setup summary and offline verification notes.

## Notes

- The deck title in `index.html` is **Biomimicry in Computing**.
- All assets are stored locally, so the presentation can be copied or shared as a standalone folder.
- If you add more slides, keep local asset paths consistent so offline behavior remains intact.

## Credits

Prepared for the **Biology for Engineers** presentation at **Meenakshi Sundararajan Engineering College**.

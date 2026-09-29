# ASTROSIGHT — AI-Based Computational Vedic Astrology & BPHS Knowledge Engine

> **Final Year B.E. Capstone Project**  
> **UI Implementation:** Modern Observatory Journal System  
> **Documents Reference:** UI/UX Design Doc, PRD & Tech Stack Document

---

## 🌟 Overview & Academic Framing

**AstroSight** is an academic implementation of computational Vedic astrology and AI-assisted interpretation integrating:
1. **Deterministic Astronomical Computation:** Swiss Ephemeris (`pyswisseph`) for sidereal positions (Lahiri ayanamsha), Ascendant, and house cusps.
2. **Vedic Feature Engine:** Structured derivations (Rashi, Nakshatras, Padas, Dignity, Vargas, Vimshottari Dashas, and Yogas).
3. **Classical Grounding (BPHS):** 1,480+ atomic aphorisms extracted exclusively from *Brihat Parashara Hora Shastra* (Girish Chand Sharma translation, Volumes I & II).
4. **Three-Layer Retrieval-Augmented Synthesis (RAG):**
   - **Layer A (Blue):** Calculated Astronomical Facts
   - **Layer B (Gold / Serif):** Verbatim Classical Scripture with Source Citation (`Vol I · Ch 23 · p. 261`)
   - **Layer C (Violet):** Grounded AI Synthesis (Zero Rule Hallucination)
5. **Independent Palmistry Module:** Isolated Computer Vision pipeline using MediaPipe and ridge detection for hand landmarking and line segmentation (completely separate from the astronomical engine).

> **Academic Disclaimer:** *AstroSight is an academic implementation of computational Vedic astrology and AI-assisted interpretation. It does not claim scientific validity of astrological predictions.*

---

## 🚀 Quick Start (Running the UI)

You can launch the complete AstroSight UI in any of the following three ways:

### Option 1: Direct One-Click Windows Launcher (Easiest)
Simply double-click the included batch script:
```cmd
start-ui.bat
```
This automatically starts the local server and opens `http://localhost:3000` in your default browser.

### Option 2: Command Line (Python)
```bash
cd c:\ASTROSIGHT
python -m http.server 3000
```
Open **[http://localhost:3000](http://localhost:3000)**.

### Option 3: Direct File Opening
Double-click `index.html` in Windows Explorer to open it in Chrome, Edge, Brave, or Firefox.

---

## 🖥️ Screen-by-Screen Features

| Section | Spec Ref | Key Functionalities |
| :--- | :--- | :--- |
| **Landing Hero** | Section 8.1 | • "Read the sky." editorial typography with celestial planetary orb<br/>• "Computed. Cited. Interpreted." tagline<br/>• Big round accent CTA ("Cast my chart ↓")<br/>• 3-stage pipeline preview (Calculate → Retrieve → Interpret) |
| **Cast Chart** | Section 8.2 | • Date, 24h Time, and Location inputs with global presets (Mumbai, Delhi, Bengaluru, London, NYC, etc.)<br/>• Live civil time → timezone → UTC → Julian Day derivation display<br/>• Unknown time toggle with Lagna warning (FR-11)<br/>• Central Ayanamsha config (`swe.SIDM_LAHIRI`) & House systems (Whole Sign, Placidus) |
| **Chart Visualizer** | Section 8.3 | • **3-Way Style Toggle:** North Indian Diamond, South Indian Box, and Circular Vedic Wheel<br/>• Interactive planet glyphs (☉, ☽, ♂, ☿, ♃, ♀, ♄, ☊, ☋)<br/>• Dignities marked: Exalted [↑], Debilitated [↓], Own Sign [★], Retrograde [R] |
| **Planets Table** | Section 8.3 | • Tabular monospace data: Planet, Sign, Exact Longitude (° ' "), Nakshatra & Pada, House, Daily Speed, Motion, Dignity<br/>• "Export Chart JSON" feature for standard data interchange (FR-3.1) |
| **12 Houses View** | Section 7 & 8.3 | • 12 Bhava cards (Tanu through Vyaya) showing resident lords, occupants, and significations with direct link to BPHS chapters |
| **Vimshottari Dashas** | Section 8.6 | • 120-Year Vimshottari horizontal visual timeline with active Jupiter Mahadasha highlighted<br/>• Sub-period Antardashas drilldown with dates and retrieved BPHS Vol II aphorisms |
| **Classical Yogas** | Section 8.3 | • Deterministic detection of Ruchaka Mahapurusha Yoga, Gaja Kesari Yoga, Budhaditya Yoga, Dhana Yoga, and Kemadruma Yoga cancellation |
| **Three-Layer Interpretation** | Section 8.4 | • **Layer A (Fact):** Blue hairline card with calculated positions<br/>• **Layer B (Rule):** Gold serif classical shloka with clickable Source Chip<br/>• **Layer C (Synthesis):** Violet tinted card with grounded contextual synthesis<br/>• Quick Prompts: Career, Marriage, Wealth, Education, Dasha |
| **Slide-Over Source Drawer** | Section 8.5 | • Slides out on clicking any source chip<br/>• Displays exact `source_text`, `context_text`, Book, Volume, Translator, Chapter, Printed Page vs PDF Page (strictly separate), Rule ID, and verification badge<br/>• "Copy Citation" button |
| **Knowledge Explorer** | Section 8.7 | • Academic corpus search engine for browsing atomic rules<br/>• Category filters: All, Houses, Planets, Yogas, Dashas, Ashtakavarga<br/>• Search by topic, keyword, or rule ID |
| **Palm Reading Module** | Section 8.8 | • Distinct terracotta/copper visual theme to signify pipeline separation<br/>• Simulated MediaPipe 21-landmark hand contour detection<br/>• Interactive toggleable lines: Heart (Cyan), Head (Emerald), Life (Amber), Fate (Purple)<br/>• Biometric feature extraction metrics & Hasta Samudrika Shastra interpretation<br/>• Simulated blur error state & lighting guidance |
| **Methodology & Ethics** | Section 8.9 & 36| • Formal academic framing disclaimer<br/>• Pipeline responsibility matrix table<br/>• Architecture mapping and provenance preservation notes |
| **Review Queue** | Section 8.10 | • Developer/Evaluator QA queue for inspecting and approving OCR records flagged with `needs_review` |

---

## 🎨 Design System & Color Tokens

- **App Background (`--bg-0`):** `#07080A` (Near-black observatory canvas)
- **Panels & Rail (`--bg-1`):** `#0E1013`
- **Cards & Inputs (`--bg-2`):** `#15181D`
- **Hairline Dividers (`--line`):** `#262A31`
- **Primary Accent (`--accent`):** `#F2B233` (Warm observatory gold)
- **Layer A Facts (`--fact`):** `#6FB7FF` (Calculated blue)
- **Layer B Classical Rules (`--rule`):** `#E8C58A` (Classical scripture gold serif)
- **Layer C AI Synthesis (`--synth`):** `#C9B8FF` (Grounded synthesis violet)
- **Review / Warnings (`--review`):** `#FF8A5B` (Flagged orange)
- **Verified / Success (`--ok`):** `#5FD39A` (Audit green)
- **Palm CV Pipeline (`--palm`):** `#E06D53` (Warm terracotta)

---

## 🏛️ Project Directory Structure

```
c:/ASTROSIGHT/
├── index.html                  # Complete AstroSight UI application
├── package.json                # Project dependencies & startup scripts
├── start-ui.bat                # Windows 1-click launcher
├── README.md                   # Complete documentation
├── asrto prompt.pdf            # Original specifications
├── AstroSight Design Doc.html  # UI/UX specification document
├── AstroSight PRD.html         # Product requirements document
└── AstroSight Tech Stack.html  # Technical architecture document
```

---

*Developed for the Final Year B.E. Project Evaluation — AstroSight Computational Vedic Astronomy System.*

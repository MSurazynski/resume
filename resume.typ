// ============================================================================
//  Standalone CV — no template. All styling defined explicitly below.
//  Only external dependency: the fontawesome package (for the small icons).
// ============================================================================
#import "@preview/fontawesome:0.6.0": *

#set document(author: "Michal Surazynski", title: "CV Michał Surażyński")

// ---------------------------------------------------------------------------
//  GLOBAL PAGE & TEXT SETTINGS
// ---------------------------------------------------------------------------
#set page(
  paper: "a4",
  margin: 0.7cm,          
)
#set text(
  font: "Libertinus Serif", 
  size: 11pt,               
  lang: "en",
)

#show link: it => underline(it, evade: true, background: true)

// ---------------------------------------------------------------------------
//  LIST STYLING  (bullet points)
//  Control the vertical spacing between bullets and their indent here.
// ---------------------------------------------------------------------------
#set list(
  indent: 0pt,        // indent of the whole bullet block
  body-indent: 5pt,   // gap between the bullet marker and the text
  spacing: 0.85em,    // <- vertical space BETWEEN bullet items
  marker: [•],
)
// Space ABOVE the first bullet and BELOW the last, relative to surrounding text
#show list: it => {
  set block(spacing: 0.85em)   // <- space around the whole list block
  it
}

// Paragraph leading (line spacing inside multi-line bullets)
#set par(leading: 0.65em, spacing: 0.85em)

// ---------------------------------------------------------------------------
//  SECTION HEADER  — title on the left, horizontal rule filling the rest.
//  Reproduces the template's `section()` function.
// ---------------------------------------------------------------------------
#let section(title) = {
  v(6pt)                       // <- space ABOVE each section header
  block(below: 0.9em)[         // <- space BELOW the header, before content
    #grid(
      columns: (auto, 1fr),
      column-gutter: 6pt,
      align: (left + bottom, left + bottom),
      text(size: 15.5pt, weight: 700)[#title],   // <- section title size/weight
      // the accent rule; sits at the underline position of the heading text.
      // Increase `bottom` inset to raise the line, decrease to lower it.
      box(inset: (bottom: 3.5pt))[
        #line(length: 100%, stroke: 0.6pt + black)
      ],
    )
  ]
}

// ---------------------------------------------------------------------------
//  ENTRY  — left block (title + bullets) and right-aligned date.
//  Reproduces the template's `entry()` function.
// ---------------------------------------------------------------------------
#let entry(left-text, right-text) = {
  block(below: 1.1em)[         // <- vertical space AFTER each entry
    #grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      row-gutter: 0.85em,
      align(left)[#left-text],
      align(right)[#right-text],
    )
  ]
}

// ===========================================================================
//  HEADER  — photo + name + contact line
// ===========================================================================
#table(
  columns: (auto, 1fr),
  stroke: none,
  column-gutter: 10pt,
  align: (left, left),
  inset: 0pt,
  [#image("profile_img.png", width: 2.5cm)],
  [
    #v(11pt)
    #text("Michał Surażyński", size: 25pt, weight: 700)\
    #v(0pt)
    #text("Software Engineer | C++", size: 15pt, weight: 550) \
    #v(0pt)
    #text("Eindhoven, NL") |
    #text("+31 623531190") |
    #text("michalsur@hotmail.com") |
    #link("https://www.github.com/MSurazynski")[github] |
    #link("https://www.linkedin.com/in/michal-surazynski")[linkedin] |
    #text("English, Polish")
  ],
)

#v(2pt)
#text(style: "italic", size: 12pt, weight: 500)[Embedded and C++ software engineer, TU/e cum laude, with production experience at Philips and at a multidisciplinary drone student team.] \

// ===========================================================================
//  EDUCATION
// ===========================================================================
#section("Education")
#entry(
  [
    *Technische Universiteit Eindhoven*  (_Bachelor of Computer Science and Engineering_) \
    - GPA: 8.2, graduated cum laude
    - Recipient of TU/e High Potential Bachelor’s Scholarship
    - Elective courses in Integrated Circuit Design
  ],
  [_09/2023 - 06/2026_],
)

// ===========================================================================
//  EXPERIENCE
// ===========================================================================
#section("Experience")
#entry(
  [
    *Software Engineering Intern* _(Philips)_ \
    - Designing, developing, and testing C++ software components for patient monitoring products within the interoperability and connectivity scope
    - Implementing communication protocols to enable interoperability with clinical devices from Philips and other vendors
    - Working as part of an international Scrum team
  ],
  [_since 07/2026_]
)

#entry(
  [
    *Embedded Software Engineer* _(TU/e Aero Student Team)_ \
    - Developed C++ fault detection and telemetry system for a Battery Swap system that monitors current, voltage, temperature and positions for 7 Dynamixel motors using RPi and Arduino
    - Worked on Rust communication layer running on RPis aboard a drone and a car, connecting their ArduPilot flight controllers (Cube Orange) via MAVLink and linking the two vehicles over SiK telemetry radios
    - Worked within a multidisciplinary team with around 30 CS, DS, ME, EE students
  ],
  [_09/2025 - 06/2026_],
)

#entry(
  [
    *Student Assistant* _(Technische Universiteit Eindhoven)_ \
    - Twice involved in Calculus course: organized and conducted weekly instructions for 20 students
    - Involved in Software Design course: assisted in Q&A and instruction sessions
  ],
  [_2024 - 2026_],
)

// ===========================================================================
//  PROJECTS
// ===========================================================================
#section("Projects")
#entry(
  [
    *Kindergarten Scheduling System and Websites* \
    - Designed and developed two production websites for two commercial kindergartens using React, TailwindCSS, and Firebase
    - Built a shared timetable generation service, used by both kindergartens, with Google OR-Tools, reducing schedule creation time from days to minutes
    - Deployed the timetable generation system as an HTTP API on Google Cloud
    - Both websites are actively used in production
  ],
  [_since 06/2025_],
)

#entry(
  [
    *DisplayPi — Raspberry Pi E-Paper Dashboard* \
    - Built a dashboard and image display system for an e-ink display on Raspberry Pi with python
    - Implemented workflows for generating different dashboards, and containerized the application with Docker
  ],
  [_since 03/2026_],
)

// ===========================================================================
//  SKILLS
// ===========================================================================
#section("Skills")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("Languages", weight: 600), [C, C++, Rust, Java, Python, JavaScript],
  text("Systems / Embedded", weight: 600), [Linux, Arduino, Raspberry Pi],
  text("Testing", weight: 600), [GoogleTest, GoogleMock, pytest, unit & component testing],
  text("Tools", weight: 600), [Git, Docker],
  text("Other", weight: 600), [Agile, Scrum],
)

#import "@preview/cv-soft-and-hard:0.1.0": (
  cpp, entry, hugo, python, rust, section, styling, subsection, typescript, typst-logo,
)
#import "@preview/fontawesome:0.6.0": *

#set document(author: "Michal Surazynski", title: "CV Michał Surażyński")
#show: styling
#set page(margin: 0.7cm)


#table(
  columns: (auto, 1fr),
  stroke: none,
  column-gutter: 10pt,
  align: (left, left),
  [#image("Aero_0097-modified.png", width: 3cm)],
  [
    #v(11pt)
    #text("Michał Surażyński", size: 25pt, weight: 700)\
    #v(0pt)
    #fa-icon("location-dot", size: 8pt) Antonie Morostraat 18, 5642AE Eindhoven\
    #fa-icon("phone", size: 8pt) #text("+31 623531190") |
    #fa-icon("envelope", size: 8pt) #text("michalsur@hotmail.com") |
    #fa-icon("github", size: 8pt) #link("www.github.com/MSurazynski")[github] |
    #fa-icon("linkedin", size: 8pt) #link("www.linkedin.com/in/michal-surazynski")[linkedin] |
    #fa-icon("language", size: 8pt) #text("English, Polish")
  ],
)

// #section("About")
// Computer Science student at TU/e focused on low-level systems.
// Experience in contributing to multidisciplinary student team and developing commercial projects.
// Interested in developing reliable and efficient technical systems.

#section("Education")
#entry(
  [
    *Technische Universiteit Eindhoven*\
    _Bachelor of Computer Science and Engineering_ \
    - GPA: 8.2
    - Elective courses in Integrated Circuit Design
    - Third year student
    - Recipient of TU/e High Potential Bachelor’s Scholarship
  ],
  [
    _since 09/2023_\
  ],
)

//Experience
#section("Experience")
#entry(
  [
    *Embedded Software Engineer* _(TU/e Aero Student Team)_ \
    - Developing C++ fault detection and telemetry systems for a physical Battery Swap system using Arduino and Raspberry Pi communicating via MQTT
    - System monitors current, voltage, temperature and positions for 7 Dynamixel motors
    - Works within a multidisciplinary team
  ],
  [_since 09/2025_],
)
#entry(
  [
    *Student Assistant* _(Technische Universiteit Eindhoven)_ \
    - Involved twice in Calculus course: organized and conducted weekly instructions for 20 students
    - Involved in Software Design course: assisted in Q&A and instruction sessions
  ],
  [_2024 - 2026_],
)

//Experience
#section("Projects")
#entry(
  [
    *Multi-agent Path Planning for Airport Luggage* \
    - Built a graph model of an airport luggage system using C without external libraries
    - Developed a multi-agent path finding algorithm that prevents collisions by running BFS in time-expanded search.
    - Implemented reservation-based path allocation system that optimizes overall travel time for all agents
    - Exported C code as a python library for simulation and validation purposes
  ],
  [],
)

#entry(
  [
    *Kindergarten Scheduling System and Website* \
    - Designed and developed a production website for a commercial kindergarten using React, TailwindCSS, Firebase, and Google Cloud
    - Built an optimized timetable generation system using Google OR-Tools, reducing scheduling time from approximately one day to a few minutes
    - Migrated the scheduler from a Python desktop application to an HTTP API deployed with Google Cloud Functions for integration with the kindergarten website
    - Implemented responsive frontend, database integration, and CI/CD pipeline
    - Deployed and maintained a system actively used by a commercial kindergarten
  ],
  [],
)

#entry(
  [
    *DisplayPi — Raspberry Pi E-Paper Dashboard* \
    - Build a dashboard and image display system for an e-ink display on Raspberry Pi
    - Implemented workflows using uv and just for generating different dashboards
    - Containerized the application with Docker
  ],
  [],
)

#section("Skills")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("Languages", weight: 600), [C, C++, Java, Python, Javascript],
  text("Systems / Embedded", weight: 600), [Linux, Arduino, Raspberry Pi],
  text("Tools", weight: 600), [Git, Docker, Cadence, Neovim, VSCode],
)

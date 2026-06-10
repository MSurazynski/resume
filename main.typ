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

#section("Education")
#entry(
  [
    *Technische Universiteit Eindhoven*  (_Bachelor of Computer Science and Engineering_) \
    - GPA: 8.2
    - Third year student
    - Recipient of TU/e High Potential Bachelor’s Scholarship
    - Elective courses in Integrated Circuit Design
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
    - Developing C++ fault detection and telemetry systems for a Battery Swap system using Arduino and Raspberry Pi
    - System monitors current, voltage, temperature and positions for 7 Dynamixel monitors
    - Developing a Rust communication layer running on Raspberry Pis aboard a drone and a ground vehicle, connecting their ArduPilot flight controllers (Cube Orange) via MAVLink and linking the two vehicles over SiK telemetry radios
    - Working within a multidisciplinary team with around 30 CS, DS, ME, EE students
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
    - Built a graph model of an airport luggage system using C for Raspberry Pi Pico
    - Developed a multi-agent path finding algorithm that prevents collisions by running BFS in time-expanded search
    - Implemented reservation-based path allocation system that optimizes overall travel time for all agents
    - Exported C code as a python library for testing
  ],
  [_09/2025 - 11/2025_],
)

#entry(
  [
    *Kindergarten Scheduling System and Website* \
    - Designed and developed a production website for a commercial kindergarten using React, TailwindCSS, Firebase, and Google Cloud
    - Built a timetable generation service using Google OR-Tools, reducing time needed to create a schedule from few days to few minutes
    - Deployed the timetable generation system as HTTP API with Google Cloud Functions 
    - System is actively used by a commercial kindergarten
  ],
  [_Since 2025_],
)

#entry(
  [
    *DisplayPi — Raspberry Pi E-Paper Dashboard* \
    - Build a dashboard and image display system for an e-ink display on Raspberry Pi with python
    - Implemented workflows for generating different dashboards, and containerized the application with Docker
  ],
  [_since 03/2026_],
)

#section("Skills")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("Languages", weight: 600), [C, C++, Rust, Java, Python, Javascript],
  text("Systems / Embedded", weight: 600), [Linux, Arduino, Raspberry Pi],
  text("Tools", weight: 600), [Git, Docker, Cadence],
)

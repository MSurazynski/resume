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

#section("About")
Computer Science student at TU/e focused on low-level systems.
Experience in contributing to multidisciplinary student team and developing commercial projects.
Interested in developing reliable and efficient technical systems.

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

// #section("Profile")
// Computer Science student at TU/e focused on low-level systems, optimization, integrated circuits, and real-world applications. Experience
// in contributing to multidisciplinary student team, developing projects deployed in commercial setting, and holding leadership position in a
// large youth organization. Interested in developing reliable and efficient technical systems.

//Experience
#section("Experience")
#entry(
  [
    *Embedded Software Engineer* _(TU/e Aero Student Team)_ \
    - Developing C++ fault detection and telemetry systems for a physical Battery Swap system using Arduino and Raspberry Pi
    - System monitors current, voltage, temperature and positions for 7 Dynamixel motors
    - Works within a multidisciplinary team
  ],
  [_since 09/2025_],
)
#entry(
  [
    *Calculus Teaching Assistant* _(Technische Universiteit Eindhoven)_ \
    - Organized and conducted weekly sessions for two student groups
    - Explained core mathematical concepts whilst guiding students in problem-solving structured sessions
  ],
  [_2024, 2024_],
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
    *Timetable Generator for Kindergartens* \
    - Built a Python desktop app to gather and store kindergarten data and deployed it in a commercial kindergarten
    - Used Google OR Tools to generate optimized timetables which reduced scheduling time from 1 day to few minutes
    - Implemented automatic data export options to both Microsoft Excel and Word
    - Actively used by a commercial kindergarten
  ],
  [],
)

#entry(
  [
    *Kindergarten Website* \
    - Designed and developed a production website using React, TailwindCSS, and Firebase backend services
    - Implemented responsive frontend, backend and a database
    - Implemented CI/CD pipeline
    - Deployed and actively used by a commercial kindergarten
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
  text("Tools", weight: 600), [Git, Cadence],
)

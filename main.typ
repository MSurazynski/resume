#import "@preview/cv-soft-and-hard:0.1.0": (
  cpp, entry, hugo, python, rust, section, styling, subsection, typescript, typst-logo,
)

#set document(author: "Jonas Pleyer", title: "CV Michał Surażyński")
#show: styling
#set page(margin: 0.8cm)

#table(
  columns: (auto, 1fr),
  stroke: none,
  column-gutter: 10pt,
  align: (left, left),
  [#image("Aero_0097-modified.png", width: 3cm)],
  [
    #v(11pt)
    #text("Michał Surażyński", size: 20pt, weight: 600)\
    #v(0pt)
    Antonie Morostraat 18, 5642AE Eindhoven\
    #text("+31 623531190") |
    #text("michalsur@hotmail.com") |
    #link("github.com/MSurazynski") |
    #text("English, Polish")

  ],
)

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
    *Embedded Software Engineer* (_TU/e Aero Student Team_) \
    - Developing C++ fault detection and telemetry systems for a physical Battery Swap system using Arduino and Raspberry Pi
    - System monitors current, voltage, temperature and positions for 7 Dynamixel motors
    - Works within a multidisciplinary team.
    - Established and maintains a team-wide wiki to organize and centralize documentation
  ],
  [_since 09/2025_],
)
#entry(
  [
    *Calculus Teaching Assistant* (_Technische Universiteit Eindhoven_) \
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
    - Developed a multi-agent path finding algorithm that prevents collisions by running BFS in time-expanded search.
    - Implemented reservation-based path allocation system that optimizes overall travel time for all agents.
    - Exported C code as a python library for simulation and validation purposes.
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

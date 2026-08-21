#let accent = rgb("#000000")
#let leading = 0.6em

#set page(paper: "us-letter", margin: (x: 1in, y: 0.8in))
#set text(size: 10pt, lang: "en")
#set par(leading: leading, spacing: 0.5em)
#set list(marker: [•], indent: 0em, spacing: leading)

#let section(title) = {
  v(1em, weak: false)
  stack(
    dir: ttb,
    spacing: 0.2em,
    text(font: "Montserrat", size: 12pt, weight: "bold", title),
    line(length: 100%, stroke: 0.6pt),
  )
  v(0.0em)
}

#let entry(title, location, subtitle, dates) = {
  v(leading, weak: false)
  grid(
    columns: (1fr, auto),
    [
      *#title*, #location
      #if subtitle != none [ --- #text(style: "italic", subtitle)]
    ],
    [#emph(dates)],
  )
}

#let award(url, title, org, date) = grid(
  columns: (1fr, auto),
  [#link(url)[*#title*], #org], [#emph(date)],
)

// Header
#align(center)[
  #text(font: "Montserrat", size: 16pt, weight: "bold")[Clayton W. Ramsey] \
  #v(0.4em)
  #show link: underline
  #link("mailto:claytonwramsey@gmail.com")[claytonwramsey\@gmail.com] ~~ #link(
    "https://claytonwramsey.com",
  )[claytonwramsey.com] ~~ #link("https://www.linkedin.com/in/claytonwramsey")[linkedin.com/in/claytonwramsey]
]

#section[Education]

#entry("Rice University", "Houston, TX", none, "Aug 2023 - Present")
Ph.D., Computer Science (in progress); advised by Dr. Lydia E. Kavraki

#entry("Rice University", "Houston, TX", none, "Aug 2019 - May 2023")
B.S., Electrical Engineering; B.A., Computer Science #h(1fr) GPA 3.85, _cum laude_

#section[Experience]

#entry("Rice University", "Houston, TX", "Doctoral Fellow", "Aug 2023 - Present")
- Proposed coroutine graphs, a massively parallel multithreaded framework for solving task and motion planning in milliseconds.
  The framework applies insights from operating system scheduling to heuristic search.
- Implemented novel strategies for plan repair, allowing robots to recover from failure in dynamic environments.
- Developed a hardware-accelerated Rust library for sampling-based robot motion planning in arbitrary spaces.
- Proposed CAPT, a SIMD-parallel data structure for fast collision checking with point clouds.

#entry("NASA Johnson Space Center", "Houston, TX", "Visiting Researcher", "May 2025 - Present")
- Demonstrated my research in online planning on iMETRO, the robot testing environment at JSC.

#entry("Rice University", "Houston, TX", "Undergraduate Researcher", "May 2021 - Aug 2022")
- Implemented a path-plan visualization tool for human verification of motion plans.
- Optimized an algorithm for searching uncertain spaces, yielding a 10x search time reduction.
- Benchmarked skill caching strategies for task planning, yielding up to a 50x speedup in plan generation.

#entry("Stellar Solutions", "Palo Alto, CA", "Embedded Systems Intern", "May 2020 - Aug 2020")
- Evaluated a test processor for a satellite payload and developed an SPI driver for external device interfacing.
- Wrote a deserializer converting raw byte data from a ground magnetometer station into usable data, identifying a need for temperature-based sensor calibration.

#entry("Stellar Solutions", "Palo Alto, CA", "Mechanical Design Intern", "Jun 2019 - Aug 2019")
- Collaborated with hardware suppliers to advance a design from rough sketch to final model.
- Designed sensor tip for integration with extending boom arm to reduce magnetic interference from onboard electronics.

#section[Selected publications]
#v(0.55em, weak: false)
- *C. W. Ramsey*, Z. Kingston, W. Thomason, L. E. Kavraki. #link("https://www.roboticsproceedings.org/rss20/p038.html")["Collision-Affording Point Trees: SIMD-Amenable Nearest Neighbors for Fast Collision Checking."] _Robotics: Science and Systems (RSS)_, 2024.
- *C. W. Ramsey*, L. E. Kavraki. "Coroutine Scheduling in Task and Motion Planning." #link("https://sites.google.com/view/roboarch-icra26")[_IEEE ICRA 2026 Workshop -- Robotics Acceleration with Computing Hardware and Systems_], 2026.
- T. Duong, *C. W. Ramsey*, Z. Kingston, W. Thomason, L. E. Kavraki. #link("https://arxiv.org/pdf/2603.16059")["Ultrafast Sampling-based Kinodynamic Planning via Differential Flatness."] _arXiv preprint arXiv:2603.16059_, 2026.

#section[Awards and honors]
#v(0.55em, weak: false)
- #award(
    "https://www.nasa.gov/directorates/stmd/space-tech-research-grants/nstgro/",
    "NSTGRO Fellowship",
    "NASA",
    "2024",
  )
- #award("https://ndseg.sysplus.com/NDSEG/about", "NDSEG Fellowship", "Department of Defense", "2024")
- #award(
    "https://www.usfigureskating.org/skate/test-structure",
    "Gold Medalist",
    "United States Figure Skating",
    "2018, 2021, and 2024",
  )
- #award("https://hkn.ieee.org/", "Eta Kappa Nu Member", "IEEE", "2023")
- #award(
    "https://registrar.rice.edu/students/academic-honors",
    "President's Honor Roll",
    "Rice University",
    "Fall 2022 and Spring 2023",
  )

#section[Skills]
#v(0.55em, weak: false)
- *Programming:* Rust, Python, C, C++, Java, MATLAB, JavaScript, Docker, Pixi
- *Robotics / Research:* task and motion planning, planning under uncertainty, SIMD and GPU hardware acceleration, parallel programming, machine learning

#import "template.typ": *

#show: project.with(
  meta: (
    title: "Title of our project",
    theme: "Anvendelse af maskinlæring til at aldersbestemmelse af sår hos slagtesvin",
    project_period: "Fall Semester 2023",
    project_group: "cs-24-dat-2-01",
    participants: (
      (name: "Frederik Vejen Rønne Rasmussen", email: "frasmu23@student.aau.dk"),
      (name: "Jacob Højlund Sumonsen", email: "jsimon23@student.aau.dk"),
      (name: "Jeppe Nyland Mortensen", email: "jnmo23@student.aau.dk"),
      (name: "Kristoffer Holm", email: "kholm23@student.aau.dk"),
      (name: "Nicolai Dybro Jensen", email: "ndje23@student.aau.dk"),
      (name: "Victor Hjelmberg Feddersen", email: "vfedde23@student.aau.dk")
    ),
    supervisor: (
      (name: "Anders Læsø Madsen", email: "alm@cs.aau.dk"),
    ),
    date: "22. December 2025",
  ),
  abstract: lorem(59),
  department: "Computer Science",
)

// This is the primary file in the project.

#include "Chapters/01 Introduction/introduction.typ"
#pagebreak(weak: true)
#bibliography(
  style: "ieee",
  "sources/sample.bib"
)

#let appendix(body) = {
  set heading(numbering: "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}

#show: appendix

#include "chapters/99 Appendix/appendix.typ"

#outline(target: heading.where(supplement: [Appendix]), title: [Appendix]) 





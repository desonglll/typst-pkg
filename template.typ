
#import "func.typ": *

#let title = lorem(2)
#let subtitle = lorem(8)
#let author = "John Doe"
#let date = datetime.today()

#title_page(title, author, date: date, subtitle: subtitle)

// Set the basement
#set page(paper: "a4", margin: 2.5cm)
// Or number-align: top + right

// Double line spacing
#set text(top-edge: 0.7em, bottom-edge: -0.3em)
#set par(
  leading: 1em,
  first-line-indent: (amount: 2em, all: true),
  justify: true,
)

// 12pt Times New Roman
#set text(
  size: 12pt,
  font: (
    (name: "Times New Roman", covers: "latin-in-cjk"),
    (name: "Songti SC", covers: regex("[\u4E54-\u9FFF]")),
  ),
)

// Numbering
#set heading(numbering: "I. A. 1. a. i")

#outline()

#set page(numbering: "1", number-align: bottom + center)

= #lorem(2)

== #lorem(5)

#lorem(100)

#lorem(200)

你好

#let simple_paper_theme(
  title: [Simple Example Paper],
  outline_title: [目录],
  lang: "zh",
  page_number: "1",
  font_size: 12pt,
  paper_size: "a4",
  main_font: "Sarasa Gothic SC",
  title_font: "Source Han Serif",
  mono_font: "Fira Code Retina",
  math_font: "STIX Two Math",
  date: datetime.today(),
  paper_body,
) = {
  set text(
    lang: lang,
    font: main_font,
    size: font_size,
    number-width: "tabular",
    cjk-latin-spacing: auto,
    stylistic-set: 20,
  )
  show heading: set text(font: title_font)
  show math.equation: set text(font: math_font)
  show raw: set text(font: mono_font)
  show raw.where(block: true): code => {
    show raw.line: line => {
      text(fill: gray)[#line.number]
      h(0.8em)
      line.body
    }
    code
  }
  set page(paper: paper_size, margin: 8%)
  set heading(depth: 1, numbering: "1.1.1.")
  show heading.where(level: 4): it => {
    [$star$ #it.body]
    v(0.4em)
  }
  set par(leading: 0.8em)

  align(center + top)[
    #text(font: title_font, size: 2em)[#title]
  ]
  v(0.8em)

  outline(title: text(font: title_font)[#outline_title], indent: 2em, depth: 2)
  pagebreak()

  counter(page).update(1)
  set page(number-align: center + bottom, numbering: page_number)

  paper_body
}

#let uline(body) = {
  box(outset: (bottom: 0.4em), stroke: (bottom: 0.08em), body)
}

#let example_counter = counter("example")
#let example(it) = block[
  #set par(leading: 1em)
  #example_counter.step()
  #text(weight: "bold")[【典例 #context example_counter.display()】]
  #it
]

#let question_counter = counter("question")
#let question(it) = block[
  #set par(leading: 1em)
  #question_counter.step()
  #text(weight: "bold")[【题 #context question_counter.display()】]
  #it
]

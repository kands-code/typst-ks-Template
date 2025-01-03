#let simple_book_theme(
  title: [Simple Example Book],
  contents_title: [Contents],
  lang: "zh",
  author: [Kevin],
  date: datetime.today(),
  publisher: none,
  font_size: 12pt,
  paper_size: "a4",
  main_font: "Source Han Sans",
  mono_font: "Fira Code Retina",
  math_font: "STIX Two Math",
  title_font: "Source Han Serif",
  cover: none,
  preface: none,
  book_body,
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

  // simple cover
  if cover == none {
    v(4.8em)
    align(center + horizon)[
      #text(font: title_font, size: 3.2em)[#title]
    ]
    v(4.8em)
    align(right)[
      #text(font: title_font, weight: "semibold", size: 2em)[#author]
      #v(1.2em)
      #text(font: mono_font, weight: "medium", size: 1.2em)[#date.display()]
    ]
    align(center + bottom)[
      #text(
        font: title_font,
        if publisher == none {
          [$copyright$ #author #date.year()]
        } else {
          [$copyright$ #publisher #date.year()]
        },
      )
    ]
  } else {
    include cover
  }

  set align(left + top)
  pagebreak()

  // contents
  counter(page).update(1)
  set page(numbering: "I", number-align: bottom + center)
  outline(title: contents_title, indent: 2em)
  pagebreak()

  // preface
  if preface == none {
    set page(numbering: none)
    pagebreak()
  } else {
    include preface
    pagebreak()
  }

  // main body
  counter(page).update(1)
  set page(numbering: "1", number-align: bottom + center)

  book_body
}

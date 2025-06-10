
#let marca_style(content) = [

  #set page(
    margin: (
      top: 3.05em,
      bottom: 3.9em,
      x: 3em,
    ),
    numbering: "1",
    paper: "a4",
  )

  #set page(footer: context {
    let page = counter(page).get().first()
    place(
      bottom + if calc.even(page){ left } else { right },
      dx: if calc.even(page) { -2.2em } else { +2.2em },
      dy: -1.5em,
      text(
        size: 20pt,
        font: "UnZialish",
        str(page))
    )
  })

  #show heading: set text(
    font: "UnZialish",
    size: 1.5em,
    hyphenate: false,
    costs: (runt: 10000%),
  )

  #show heading: set par(
    leading: 0.3em,
  )

  #show heading.where(level: 1): it => {
    place(
      top,
      scope: "parent",
      float: true,
      align(center, text(size: 1.1em, font: "UnZialish", it))
    )
  }

  #show heading.where(level: 2): it => {
    set block(spacing: 1em)
    it
  }

  #show heading.where(level: 3): set text(
    size: 0.9em,
  )

  #set par(
    leading: 0.55em,
    spacing: 1.65em
  )
  #set par(justify: true)

  #set text(lang: "es")
  #set text(
    font: "Junicode",
    size: 12pt,
  )

  #set page(columns: 2)
  #set columns(gutter: 1.2em)

  #content
]


#let mde_box(content) = [
  #box(
    width: 100%,
    inset: 8pt,
    fill: rgb("#e0e0e0"), // Gris claro
    stroke: 1pt + black,  // Borde negro de 1pt
    radius: 4pt,          // Bordes redondeados (opcional)
    content
  )
]
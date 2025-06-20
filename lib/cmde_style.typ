
#let cmde_style(content) = [

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
        size: 1.7em,
        font: "UnZialishALMDE",
        str(page))
    )
  })

  #show heading: set text(
    font: "UnZialishALMDE",
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
      align(center, text(size: 1.1em, font: "UnZialishALMDE", it))
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

#show figure.where(
    kind: table
  ): set figure.caption(
    position: top
  )

#show table.cell: it => {
    if it.y == 0 {
      strong(it)
    } else {
      it
    }
  }

#set table(
  fill: (col, row) => if calc.odd(row) { gray.lighten(70%) } else { white },
  align: (col, row) => if calc.even(col) { center } else { left },
  inset: 0.3em, // Añade un poco de padding a las celdas
  stroke: (x, y) => if x == 0 and y == 0 {
    (right: (
      paint: luma(60),
      thickness: 0.15em,
    ),
    bottom: (
      paint: luma(60),
      thickness: 0.15em,
    ))
  } else if x == 0 {
    (right: (
      paint: luma(60),
      thickness: 0.15em,
    ))
  } else if y == 0 {
    (bottom: (
      paint: luma(60),
      thickness: 0.15em,
    ))
  }
)

#show figure.where(
    kind: table
  ): it => {
    show figure.caption: set text(
      size: 1.1em,
      font: "UnZialishALMDE",
      hyphenate: false,
    )
    show figure.caption: smallcaps

    align(left)[#it]
  }

  #set page(columns: 2)
  #set columns(gutter: 1.2em)


  #content
]

#let cmde_box(content) = [
  #box(
    width: 100%,
    inset: 8pt,
    fill: rgb("#e0e0e0"), // Gris claro
    stroke: 1pt + black,  // Borde negro de 1pt
    radius: 4pt,          // Bordes redondeados (opcional)
    content
  )
]
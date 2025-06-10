#import "marca_style.typ": marca_style, mde_box
#show: marca_style

= Prueba de concepto de Aventura elaborada distribuidamente

== Introducción

// Esto es un comentario
// He puesto un Lorem ipsum de prueba para mostrar que aquí se puede escribir el texto que se va a mostrar
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dolor lacus, finibus dapibus auctor eget, pellentesque non erat. Suspendisse a lobortis ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec id metus quam. Nulla sollicitudin diam dictum iaculis ornare. Etiam consequat, odio vel mattis scelerisque, tellus ipsum consequat dolor, eu ultricies ligula purus vitae nisl. In vehicula efficitur ligula ut faucibus. Etiam turpis sapien, vulputate ac convallis eu, elementum ut massa. Nam ut odio.

// Esta es la función lorem que te genera automáticamente texto de prueba
#lorem(60)

#lorem(60)

#lorem(80)

#lorem(50)

// Un recuadro negro para simular una imagen incrustada
#place(
 bottom,
 scope: "parent",
 float: true,
 rect(height: 16%, width: 100%, fill: black, stroke: none)
)

== Arrancando la aventura

#lorem(80)

#lorem(60)

#lorem(60)

#lorem(80)

#mde_box(lorem(30))

#lorem(50)

#lorem(80)

#lorem(60)

#figure(
caption: "Encuentros Aleatorios",
table(
    columns: (auto, 1fr),
    table.header(
    "1d6",
    "Descripción del Encuentro",
    ),

    "1",
    "Un niño llorando que desaparece al acercarse, dejando huellas mojadas que conducen al cementerio",

    "2",
    "Tres figuras encapuchadas realizando un ritual alrededor de un pozo de piedra",

    "3",
    "Un comerciante que vende amuletos y talismanes, asegurando que protegen contra \"la toma\"",

    "4",
    "Milicianos locales imponiendo el estricto toque de queda con una agresividad inusual",

    "5",
    "Un ermitaño medio loco que dice haber visto adónde van los aldeanos desaparecidos",

    "6",
    "Niebla arremolinada que forma siluetas humanoides y susurra nombres olvidados",
),
)

#lorem(60)

#place(
 top,
 scope: "parent",
 float: true,
 rect(height: 30%, width: 100%, fill: black, stroke: none)
)

== El lugar de marras

#lorem(80)

#lorem(60)

=== A1. Primera Sala

#lorem(80)

#lorem(50)

=== A2. Segunda Sala

#lorem(80)

#lorem(60)

=== A3. Tercera Sala

#lorem(60)

#lorem(80)

#lorem(50)

== Terminando la aventura

#lorem(80)

#lorem(60)

#place(
 top,
 float: true,
 rect(height: 30%, width: 100%, fill: black)
)

#lorem(60)

#lorem(80)


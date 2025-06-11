![La Marca del Este - Comunidad](img/marca-del-este-comunidad.png?raw=true "La marca del Este - Comunidad")

## Introducción

El objetivo de este repo es hacer una prueba de concepto de cómo se podría colaborar en la elaboración de una Aventura por parte de la Comunidad de La Marca del Este.

Para poder colaborar hará falta aprender un poco de la sintaxis de [Typst](https://typst.app/) (muy similar a [Markdown](https://daringfireball.net/projects/markdown/syntax) con algunas funciones extras). Se pretende que esto sea sencillo ya que el grueso de la maquetación se realizará automáticamente con los estilos predefinidos. También será necesario tener una cuenta en [GitHub](https://github.com/) y aprender a usar sus funciones más básicas para poder hacer fork, commits y pull requests.
- [Documentación de Typst](https://typst.app/docs/)
- [Cómo crear una cuenta en GitHub](https://docs.github.com/es/get-started/start-your-journey/creating-an-account-on-github)
- [Cómo empezar con GitHub](https://docs.github.com/es/get-started/start-your-journey/hello-world)
- [Forks en GitHub](https://docs.github.com/es/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)
- [Editor web de GitHubDev](https://docs.github.com/es/codespaces/the-githubdev-web-based-editor) 

## Releases

Este repositorio incluye una GitHub Action que automatiza la creación de una nueva release cada vez que se realiza un cambio en la rama principal. Esta acción genera un archivo PDF a partir del código fuente .typ utilizando Typst, y lo incluye automáticamente como artefacto en la nueva release.

Puedes encontrar el PDF generado en la sección Releases del repositorio, listo para descargar tras cada actualización.

## Ejecución en local

Se puede instalar en local Typst, siguiendo las instrucciones de la herramienta, y las fuentes necesarias para compilar el PDF.

Se proporciona también un Dockerfile y un docker-compose.yml para generar un contenedor Docker que incluye Typst y las fuentes necesarias para compilar el PDF.

Para compilar el PDF, simplemente ejecutar el comando `docker compose run --build --rm typst compile prueba-concepto.typ`. Si se quiere dejar ejecutando watch para que regenere el PDF cada vez que se modifique el archivo, se puede ejecutar `docker compose up watch`.

## Siguientes pasos

- [ ] Mejorar estilo de tablas
- [ ] Cubierta
- [ ] Portada

## Licencia

Este repositorio está licenciado bajo la licencia [Creative Commons Atribución-NoComercial-CompartirIgual 4.0 Internacional (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.es).

![Licencia: CC BY-NC-SA 4.0](https://img.shields.io/badge/Licencia-CC%20BY--NC--SA%204.0-lightgrey.svg)

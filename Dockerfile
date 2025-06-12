FROM alpine:latest

# Instalar dependencias necesarias, incluyendo xz para descomprimir .tar.xz
RUN apk add --no-cache \
    curl \
    tar \
    unzip \
    xz \
    fontconfig \
    ttf-dejavu \
    && mkdir -p /root/.local/share/fonts

# Descargar e instalar Typst
RUN curl -L https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz -o typst.tar.xz \
    && tar -xf typst.tar.xz \
    && mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/typst \
    && rm -rf typst.tar.xz typst-x86_64-unknown-linux-musl

# Instalar fuentes Junicode desde ZIP descargado
RUN curl -L https://sourceforge.net/projects/junicode/files/latest/download -o junicode.zip \
    && unzip junicode.zip -d junicode_fonts \
    && cp junicode_fonts/*.ttf /root/.local/share/fonts/ \
    && rm -rf junicode.zip junicode_fonts

# Copiar fuente Unzialish desde el host
COPY fonts/UnZialishALMDE.ttf /root/.local/share/fonts/

# Recargar la caché de fuentes
RUN fc-cache -fv

WORKDIR /workdir

# ENTRYPOINT como array JSON (buena práctica)
ENTRYPOINT ["typst"]

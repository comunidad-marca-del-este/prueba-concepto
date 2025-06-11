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

# Instalar fuentes Junicode y Unzialish
RUN curl -L https://sourceforge.net/projects/junicode/files/latest/download -o junicode.zip \
    && unzip junicode.zip -d junicode_fonts \
    && cp junicode_fonts/*.ttf /root/.local/share/fonts/ \
    && rm -rf junicode.zip junicode_fonts \
    && curl -L https://dl.dafont.com/dl/?f=unzialish -o unzialish.zip \
    && unzip unzialish.zip -d unzialish_fonts \
    && cp unzialish_fonts/*.ttf /root/.local/share/fonts/ \
    && rm -rf unzialish.zip unzialish_fonts \
    && fc-cache -fv

WORKDIR /workdir

# ENTRYPOINT como array JSON (buena práctica señalada por el warning)
ENTRYPOINT ["typst"]

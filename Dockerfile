# Copyright (c) 2016 Kaito Udagawa
# Copyright (c) 2016-2020 3846masa
# Copyright (c) 2020 being24
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM frolvlad/alpine-glibc:latest

ENV PATH /usr/local/texlive/2020/bin/x86_64-linuxmusl:$PATH

RUN apk add --no-cache curl perl fontconfig-dev freetype-dev && \
  apk add --no-cache --virtual .fetch-deps xz tar wget && \
  mkdir /tmp/install-tl-unx && \
  curl -L ftp://tug.org/historic/systems/texlive/2020/install-tl-unx.tar.gz | \
  tar -xz -C /tmp/install-tl-unx --strip-components=1 && \
  printf "%s\n" \
  "selected_scheme scheme-basic" \
  "tlpdbopt_install_docfiles 0" \
  "tlpdbopt_install_srcfiles 0" \
  > /tmp/install-tl-unx/texlive.profile && \
  /tmp/install-tl-unx/install-tl \
  --profile=/tmp/install-tl-unx/texlive.profile && \
  tlmgr update --self --all && \
  tlmgr install \
  collection-latexextra \
  collection-fontsrecommended \
  collection-langjapanese \
  latexmk siunitx && \
  wget https://raw.githubusercontent.com/being24/docker-alpine-texlive-ja/master/jlisting.sty && \
  mv jlisting.sty /usr/local/texlive/2020/texmf-dist/tex/latex/listing && \
  chmod +r /usr/local/texlive/2020/texmf-dist/tex/latex/listing/jlisting.sty && \
  mktexlsr && \
  rm -fr /tmp/install-tl-unx && \
  apk del .fetch-deps

WORKDIR /workdir

COPY .latexmkrc /
COPY .latexmkrc /root/

CMD ["sh"]

# being24/alpine-texlive-ja

[![Docker Automated build](https://img.shields.io/docker/automated/paperist/alpine-texlive-ja.svg)](https://hub.docker.com/r/paperist/alpine-texlive-ja/)
[![Docker Image Size](https://images.microbadger.com/badges/image/being241/docker-alpine-texlive-ja.svg)](https://microbadger.com/images/being241/docker-alpine-texlive-ja "Get your own image badge on microbadger.com")
[![version](https://images.microbadger.com/badges/version/being241/docker-alpine-texlive-ja.svg)](https://microbadger.com/images/being241/docker-alpine-texlive-ja "Get your own version badge on microbadger.com")
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg)](https://github.com/RichardLitt/standard-readme)

> Minimal TeX Live image for Japanese based on alpine

Forked from [/Paperist/docker-alpine-texlive-ja] \(under the MIT License\).

[Paperist/docker-alpine-texlive-ja]: https://github.com/Paperist/docker-alpine-texlive-ja
Add siunitx and jlisting package.

## Table of Contents

* [Install](#install)
* [Usage](#usage)
* [Contribute](#contribute)
* [License](#license)

## Install

``` bash
docker pull being241/docker-alpine-texlive-ja
```

## Usage

``` bash
$ docker run --rm -it -v $PWD:/workdir being241/alpine-texlive-ja
$ latexmk -C main.tex && latexmk main.tex && latexmk -c main.tex
```

## Contribute

PRs accepted.

## License

MIT © being24

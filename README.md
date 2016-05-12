# Dockerised Texlive (Latest)

## See available tex binaries

    docker run --rm adnrv/texlive ls -lah /opt/texbin/


## Build `tex` documents


### Update texlive packages

See git@github.com:adinriv/docker-texlive-ink.git

#### Build image

    docker build -t texlive .


### Build `tex` documents

Use 

    docker run --rm -it -v $(pwd):/var/texlive texlive pdflatex document.tex

*or*

    docker run --rm -it -v $(pwd):/var/texlive texlive xelatex document.tex

*or see available tex commands*

    docker run --rm -it -v $(pwd):/var/texlive texlive ls -lah /opt/texbin/

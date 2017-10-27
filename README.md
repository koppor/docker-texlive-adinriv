# Dockerised Texlive (Latest)

This is an extension over a minimal TeXLive. In case of missing packages you need to install them with `tlmgr install package` or create an issue to update the list of packages on the image.

## See available tex binaries

    docker run --rm adnrv/texlive ls -lah /opt/texbin/


## Build `tex` documents


### Update texlive packages

See https://github.com/adinriv/docker-texlive-ink

#### Build image

    docker build -t texlive .


### Build `tex` documents

Use 

    docker run --rm -it -v $(pwd):/home adnrv/texlive pdflatex document.tex

*or*

    docker run --rm -it -v $(pwd):/home adnrv/texlive xelatex document.tex

*or see available tex commands*

    docker run --rm -it -v $(pwd):/home adnrv/texlive ls -lah /opt/texbin/

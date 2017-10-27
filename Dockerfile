FROM adnrv/minimal-texlive
MAINTAINER adin

RUN tlmgr install \
      # Collections of basic stuff
      collection-basic \
      collection-fontsrecommended \
      collection-latex \
      collection-latexrecommended \
      collection-latexextra \
      collection-langkorean \
      collection-langspanish \
      collection-langportuguese \
      collection-mathscience \

      # Other packages
      biber \
      biblatex \
      biblatex-ieee \
      genmisc \
      IEEEtran \
      latexmk \
      logreq \
      siunitx \
      tracklang \
      xcite

FROM texlive/texlive:latest
    MAINTAINER Carsten Wulff <carsten@wulff.no>

RUN apt-get update && \
    apt-get -y install ghostscript pip poppler-utils pandoc wget imagemagick python3-svglib\
    python3.12-venv && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN  python -m venv /pyenv && /pyenv/bin/python3 -m pip install click svglib numpy pandas matplotlib


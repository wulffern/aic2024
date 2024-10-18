
VERSION_DATE=Built on $(shell date)
VERSION_HASH=${shell git log -1 --pretty=format:"%H"}
FILE= aic

TEXS = ${shell ls -1 *.latex}

PYTHON=python3
ifneq ($(wildcard /pyenv/bin/.*),)
	PYTHON=/pyenv/bin/python3
endif

kaobook:
	git clone https://github.com/fmarotta/kaobook.git

fix:
	${foreach f, ${TEXS}, ${PYTHON} fix_svg.py ${f};}

hash:
	echo '{\\noindent ${VERSION_DATE}} \\\\ \n {\\noindent from ${VERSION_HASH}}'  > version.tex

#- Choose right pandoc file based on pandoc version
PANDOC=pandoc_$(shell pandoc --version|head -n 1|cut -d " " -f 2|cut -d "." -f "1,2").tex
pandoc.tex:
	cp ${PANDOC} pandoc.tex


one: fix hash kaobook pandoc.tex
	export
	chmod -R 755  media
	TEXINPUTS=".:kaobook:" pdflatex aic
	#TEXINPUTS=".:kaobook:" makeindex aic.nlo
	#-pdflatex -interaction nonstopmode --shell-escape aic.latex
	-TEXINPUTS=".:kaobook:" bibtex aic
	TEXINPUTS=".:kaobook:" pdflatex aic
	TEXINPUTS=".:kaobook:" pdflatex aic
	#TEXINPUTS=".:kaobook:" pdflatex aic.tex
	#-pdflatex -interaction nonstopmode --shell-escape aic.latex

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
	-dNOPAUSE -dQUIET -dBATCH -sOutputFile=aic_compress.pdf aic.pdf

ebook:
	cat aic.tex |perl -pe "s/fiximg/fiximg_png/ig" > aic_epub.latex
	pandoc --gladtex -o aic.epub aic_epub.latex

clean:
	-rm *.latex
	-rm *_fiximg.tex
	-rm *.md
	-rm *.epub
	-rm -rf media
	-rm *.bbl
	-rm *.aux
	-rm *.toc
	-rm *.log
	-rm *.blg
	-rm *.dvi
	-rm *.fff
	-rm *.lof
	-rm *.lot
	-rm *.ttt
	-rm *.xml
	-rm *.pdf
	-rm *.bcf
	-rm *fiximg*.tex

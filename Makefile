
JEKYLL_VERSION=3.8
SITE=${shell pwd}/docs

.PHONY:  slides

FILES = lectures/l00_diode \
	lectures/l00_refresher \
	lectures/lp_project_report \
#	lectures/l01_intro \
	lectures/l02_esd \
	lectures/l03_refbias \
	lectures/l04_afe \
	lectures/l05_sc \
	lectures/l06_adc \
	lectures/l07_vreg \
	lectures/l08_pll \
	lectures/l09_osc \
	lectures/l10_lpradio \
	lectures/l11_aver \
	lectures/lx_energysrc

all: posts latex book

posts:
	-rm images.txt
	cp syllabus.md docs/syllabus.md
	cp plan.md docs/plan.md
	${foreach f, ${FILES}, python3 py/lecture.py post ${f}.md || exit; }
	cd lectures; cat ../images.txt |xargs git add -f


jstart:
	docker run --rm --name aic_docs --volume="${SITE}:/srv/jekyll" -p 3002:4000 -it jekyll/jekyll:${JEKYLL_VERSION} jekyll serve --watch --drafts

latex:
	-mkdir pdf/media
	python3 py/lecture.py latex lectures/tex_intro.md
	${foreach f, ${FILES}, python3 py/lecture.py latex ${f}.md || exit ; }
	cd pdf; make one
	cp pdf/aic.pdf docs/assets/

book:
	cd pdf; make ebook
	cp pdf/aic.epub docs/assets/

slides:
	${foreach f, ${FILES}, ${MAKE} slide FILE=$f; }


slide:
	python3 py/deckpdf.py ${FILE}.md docs/slides/

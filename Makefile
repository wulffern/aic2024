
JEKYLL_VERSION=3.8
SITE=${shell pwd}/docs

.PHONY:  slides

FILES = l00_diode \
	l00_refresher \
	lp_project_report \
	l01_intro \
	l02_esd \
	l03_refbias \
	l04_afe \
	l05_sc \
	l06_adc \
	l07_vreg \
	l08_pll \
	l09_osc \
	l10_lpradio \
	lx_energysrc \
	l11_aver


all: posts latex book

posts:
	-rm images.txt
	cp syllabus.md docs/syllabus.md
	cp plan.md docs/plan.md
	${foreach f, ${FILES}, python3 py/lecture.py post lectures/${f}.md || exit; }
	cd lectures; cat ../images.txt |xargs git add -f


jstart:
	docker run --rm --name aic_docs --volume="${SITE}:/srv/jekyll" -p 3002:4000 -it jekyll/jekyll:${JEKYLL_VERSION} jekyll serve --watch --drafts

latex:
	-mkdir pdf/media
	python3 py/lecture.py latex lectures/tex_intro.md
	${foreach f, ${FILES}, python3 py/lecture.py latex lectures/${f}.md || exit ; }
	cd pdf; make one
	cp pdf/aic.pdf docs/assets/

book:
	cd pdf; make ebook
	cp pdf/aic.epub docs/assets/

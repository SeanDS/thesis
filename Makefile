# Makefile for Sean Leavey's thesis.
#
# Some code from ftp://ftp.dante.de/tex-archive/support/latexmk/latexmk.txt
#
# Sean Leavey
# January 2016

PROJECT=thesis
GRAPHICS=graphics
DYNAMICGRAPHICS=$(GRAPHICS)/dynamic
GRAPHICSSOURCES=$(GRAPHICS)/sources
GRAPHICSSCRIPTS=$(GRAPHICS)/scripts
META=.meta
DATA=data
SCRIPTS=scripts
# generated dependencies from latexmk
DEPENDENCIES=.deps
PDFLATEX=pdflatex
BIBTEX=bibtex
LATEXMK=latexmk -f -use-make -halt-on-error -recorder -deps \
-e 'warn qq(In Makefile, turn off custom dependencies\n);' \
-e '@cus_dep_list = ();' \
-e 'show_cus_dep();'

# makefile directory
ROOT:=$(shell pwd)

# ===== Project files =====

all: $(PROJECT).pdf

# force gitinfo to be generated on every run
.PHONY: $(META)/gitinfo

$(eval -include $(DEPENDENCIES)/$(PROJECT).pdfP)

$(DEPENDENCIES):
	mkdir $@

$(PROJECT).pdf: $(PROJECT).tex
	if [ ! -e $(DEPENDENCIES) ]; then mkdir $(DEPENDENCIES); fi
	$(LATEXMK) -pdf -pdflatex=$(PDFLATEX) -deps-out=$(DEPENDENCIES)/$@P $<;

$(PROJECT).tex: meta

# ===== Meta files =====
meta: $(META)/gitinfo

$(META)/gitinfo: $(SCRIPTS)/generate-git-info.sh
	$(SCRIPTS)/generate-git-info.sh $@

# ===== PDF images =====

# ===== Plot scripts =====

# ===== Data files =====

# ===== SVG images =====

# ===== Misc =====

# delete all files used to compile document, except its source text and figures
clean:
	rm -f $(PROJECT).log $(PROJECT).bak $(PROJECT).aux $(PROJECT).bbl $(PROJECT).blg $(PROJECT).idx $(PROJECT).toc $(PROJECT).out $(PROJECT).run.xml $(PROJECT)-blx.bib $(PROJECT).fdb_latexmk $(PROJECT).fls $(PROJECT).tex.backup $(PROJECT).lof $(PROJECT).lot $(PROJECT).cb* *~

superclean: clean
	# remove compiled document
	rm -f $(PROJECT).pdf
	# remove dynamically generated graphics
	rm -f $(DYNAMICGRAPHICS)/*
	# remove dependencies directory
	rm -rf $(DEPENDENCIES)
	# meta info
	rm -rf $(META)
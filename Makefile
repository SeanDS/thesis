# Makefile for Sean Leavey's thesis.
#
# Some code from ftp://ftp.dante.de/tex-archive/support/latexmk/latexmk.txt
#
# Sean Leavey
# January 2016

# project
PROJECT=thesis

# terminal commands
PDFLATEX=pdflatex
BIBTEX=bibtex
LATEXMK=latexmk -f -use-make -halt-on-error -recorder -deps \
-e 'warn qq(In Makefile, turn off custom dependencies\n);' \
-e '@cus_dep_list = ();' \
-e 'show_cus_dep();'

# makefile directory
ROOT:=$(shell pwd)

# meta directory
META=.meta

# generated dependencies from latexmk
DEPENDENCIES=.deps

# graphics
GRAPHICS=graphics
DYNAMICGRAPHICS=$(GRAPHICS)/dynamic
GRAPHICSSOURCES=$(GRAPHICS)/sources
GRAPHICSSCRIPTS=$(GRAPHICS)/scripts

# data
DATA=data
DATARAW=$(DATA)/raw
DATASCRIPTS=$(DATA)/scripts

# scripts (non-plotting)
SCRIPTS=scripts

# chapters
CHAPTERESD=70-esd-concept

# ===== Project files =====

all: $(PROJECT).pdf

# force gitinfo to be generated on every run
.PHONY: $(META)/gitinfo

$(eval -include $(DEPENDENCIES)/$(PROJECT).pdfP)

$(DEPENDENCIES):
	mkdir $@

$(PROJECT).pdf: $(PROJECT).tex
	# (re)generate gitinfo
	$(SCRIPTS)/generate-git-info.sh $(META)/gitinfo

	if [ ! -e $(DEPENDENCIES) ]; then mkdir $(DEPENDENCIES); fi
	$(LATEXMK) -pdf -pdflatex=$(PDFLATEX) -deps-out=$(DEPENDENCIES)/$@P $<;

# ===== PDF images =====
$(CHAPTERESD)/$(DYNAMICGRAPHICS)/esd-ansys.pdf: $(CHAPTERESD)/$(GRAPHICSSCRIPTS)/plot_esd_ansys.py $(CHAPTERESD)/$(DATA)/esd-ansys-data.csv
	# remove first prerequisite in passing them to python
	@python $< $@ $(filter-out $<,$^)

# ===== Plot scripts =====

# ===== Data files =====
$(CHAPTERESD)/$(DATA)/esd-ansys-data.csv: $(CHAPTERESD)/$(DATASCRIPTS)/convert_esd_mat.py $(CHAPTERESD)/$(DATARAW)/itm.mat $(CHAPTERESD)/$(DATARAW)/etm.mat
	# remove first prerequisite in passing them to python
	@python $< $@ $(filter-out $<,$^)

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
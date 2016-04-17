# Makefile for Sean Leavey's thesis.
#
# Some code from ftp://ftp.dante.de/tex-archive/support/latexmk/latexmk.txt
#
# Sean Leavey
# January 2016

# project
PROJECT=thesis

# terminal commands
PDFLATEX=pdflatex --interaction=nonstopmode
BIBTEX=bibtex
LATEXMK=latexmk -f -use-make -recorder -deps

# makefile directory
ROOT:=$(shell pwd)

# meta directory
META=.meta

# generated dependencies from latexmk
DEPENDENCIES=.deps

# graphics
GFX=graphics
GFXGEN=$(GFX)/generated
GFXGENPY=$(GFXGEN)/from-python
GFXGENSVG=$(GFXGEN)/from-svg
GFXSRC=$(GFX)/sources
GFXSRCPY=$(GFXSRC)/python
GFXSRCSVG=$(GFXSRC)/svg

# data
DATA=data
DATAGEN=$(DATA)/generated
DATAGENPY=$(DATAGEN)/from-python
DATARAW=$(DATA)/raw
DATASCR=$(DATA)/scripts
DATASCRPY=$(DATASCR)/python

# scripts (non-plotting)
SCRIPTS=scripts

# look and feel script
LOOKFEELSCRIPT=$(SCRIPTS)/lookfeel.py

# ===== Project files =====

all: $(PROJECT).pdf

# force gitinfo to be generated on every run
.PHONY: $(META)/gitinfo

# include dependencies generated by latexmk
$(eval -include $(DEPENDENCIES)/$(PROJECT).pdfP)

$(DEPENDENCIES):
	mkdir $@

$(PROJECT).pdf: $(PROJECT).tex
	# (re)generate gitinfo
	$(SCRIPTS)/generate-git-info.sh $(META)/gitinfo

	if [ ! -e $(DEPENDENCIES) ]; then mkdir -p $(DEPENDENCIES); fi
	
	# create directories for generated plots etc.
	if [ ! -e $(GFXGEN) ]; then mkdir -p $(GFXGEN); fi
	if [ ! -e $(GFXGENPY) ]; then mkdir -p $(GFXGENPY); fi
	if [ ! -e $(GFXGENSVG) ]; then mkdir -p $(GFXGENSVG); fi
	if [ ! -e $(DATAGEN) ]; then mkdir -p $(DATAGEN); fi
	if [ ! -e $(DATAGENPY) ]; then mkdir -p $(DATAGENPY); fi
	
	# call Latexmk
	$(LATEXMK) -pdf -pdflatex=$(PDFLATEX) -deps-out=$(DEPENDENCIES)/$@P $<

# handle glossary (latexmk can't)
$(PROJECT).gls: $(PROJECT).glo
	makeglossaries $<

$(PROJECT).acr: $(PROJECT).acn
	makeglossaries $<

# ===== PDF images =====

$(GFXGENSVG)/%.pdf: $(GFXSRCSVG)/%.svg
# call inkscape to convert SVG to PDF
	@inkscape --without-gui --file=$< --export-pdf=$@ --export-area-drawing

$(GFXGENPY)/%.pdf: $(GFXSRCPY)/%.py $(LOOKFEELSCRIPT)
# call Python script to generate graphic
	@python $< $@

# ===== Extra dependencies for plot scripts =====

$(GFXGENPY)/30-coating-vs-grating-noise.pdf: $(DATA)/30-coating-vs-grating-noise.csv

$(GFXGENPY)/30-individual-factors.pdf: $(DATA)/30-individual-factors.csv

$(GFXGENPY)/70-esd-ansys.pdf: $(DATAGENPY)/70-esd-ansys.csv

# ===== Data dependencies =====

$(DATAGENPY)/%.csv: $(DATASCRPY)/%.py
# call Python script to generate data
	@python $< $@

# ===== Extra data dependencies =====

# data set generated from other data sets
$(DATAGENPY)/70-esd-ansys.csv: $(DATA)/70-itm.mat $(DATA)/70-etm.mat

# ===== Misc =====

# delete all files used to compile document, except its source text and figures
.PHONY: clean
clean:
	@rm -f *.log *.ist *.glsdefs *.acn *.bak *.bbl *.blg *.idx *.toc *.out *.run.xml *-blx.bib *.fdb_latexmk *.fls *.tex.backup *.lof *.lot *.cb* *~ *.aux

.PHONY: superclean
superclean: clean
# remove compiled document
	@rm -f $(PROJECT).pdf
# remove dynamically generated graphics and data
	@rm -rf $(GFXGEN)/*
	@rm -rf $(DATAGEN)/*
# remove dependencies directory
	@rm -rf $(DEPENDENCIES)
# meta info
	@rm -rf $(META)
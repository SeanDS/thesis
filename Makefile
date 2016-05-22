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
DATAGENMAT=$(DATAGEN)/from-matlab
DATARAW=$(DATA)/raw
DATASCR=$(DATA)/scripts
DATASCRPY=$(DATASCR)/python
DATASCRMAT=$(DATASCR)/matlab

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
	if [ ! -e $(DATAGENMAT) ]; then mkdir -p $(DATAGENMAT); fi
	
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

$(GFXGENPY)/30-posterior-coupling.pdf: $(DATA)/30-posterior-coupling.csv

$(GFXGENPY)/30-posterior-scaling.pdf: $(DATA)/30-posterior-scaling.csv

$(GFXGENPY)/30-posterior-stddev.pdf: $(DATA)/30-posterior-stddev.csv

$(GFXGENPY)/30-magnet-offset.py: $(DATA)/30-magnet-offset.csv

$(GFXGENPY)/30-coupling-best-fit.pdf: $(DATA)/30-coupling-best-fit-measurements.csv $(DATA)/30-coupling-best-fit-simulations.csv

$(GFXGENPY)/60-esd-ansys.pdf: $(DATAGENPY)/60-esd-ansys.csv

$(GFXGENPY)/60-new-amplifier-tfs.pdf: $(DATA)/60-new-amplifier-tfs-channel-a.txt $(DATA)/60-new-amplifier-tfs-channel-b.txt $(DATA)/60-new-amplifier-tfs-channel-c.txt $(DATA)/60-new-amplifier-tfs-channel-d.txt

$(GFXGENPY)/60-new-amplifier-coherence.pdf: $(DATA)/60-new-amplifier-coherence-channel-a.txt $(DATA)/60-new-amplifier-coherence-channel-b.txt $(DATA)/60-new-amplifier-coherence-channel-c.txt $(DATA)/60-new-amplifier-coherence-channel-d.txt

$(GFXGENPY)/60-new-amplifier-dewhitening.pdf: $(DATAGENMAT)/60-new-amplifier-single-dewhitening.csv $(DATAGENMAT)/60-new-amplifier-dual-dewhitening.csv

$(GFXGENPY)/70-epics-test.pdf: $(DATA)/70-epics-test-local.csv $(DATA)/70-epics-test-remote.csv

$(GFXGENPY)/70-epics-test-stars.pdf: $(DATA)/70-epics-test-local.csv $(DATA)/70-epics-test-remote.csv

$(GFXGENPY)/70-epics-aliasing.pdf: $(DATA)/70-epics-aliasing-local.csv $(DATA)/70-epics-aliasing-remote.csv

# ===== Data dependencies =====

$(DATAGENPY)/%.csv: $(DATASCRPY)/%.py
# call Python script to generate data
	@python $< $@

# ===== Extra data dependencies =====

# data set generated from other data sets
$(DATAGENPY)/60-esd-ansys.csv: $(DATA)/60-itm.mat $(DATA)/60-etm.mat

$(DATAGENMAT)/60-new-amplifier-single-dewhitening.csv: $(DATASCRMAT)/createWhiteningTf.m $(DATASCRMAT)/newAmplifierSingleDewhitening.fil
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWhiteningTf('$(ROOT)/$@', 'newAmplifierSingleDewhitening.fil'); exit;"

$(DATAGENMAT)/60-new-amplifier-dual-dewhitening.csv: $(DATASCRMAT)/createWhiteningTf.m $(DATASCRMAT)/newAmplifierDualDewhitening.fil
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWhiteningTf('$(ROOT)/$@', 'newAmplifierDualDewhitening.fil'); exit;"

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
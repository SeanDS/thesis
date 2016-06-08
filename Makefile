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
GFXGENTIKZ=$(GFXGEN)/from-tikz
GFXSRC=$(GFX)/sources
GFXSRCPY=$(GFXSRC)/python
GFXSRCSVG=$(GFXSRC)/svg
GFXSRCTIKZ=$(GFXSRC)/tikz

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
	if [ ! -e $(GFXGENTIKZ) ]; then mkdir -p $(GFXGENTIKZ); fi
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

$(GFXGENTIKZ)/%.pdf: $(GFXSRCTIKZ)/%.tex
# call LaTeX to compile TikZ image
	pdflatex $<
	mv $(notdir $@) $@

# ===== Extra dependencies for plot scripts =====

$(GFXGENPY)/30-coating-vs-grating-noise.pdf: $(DATA)/30-coating-vs-grating-noise.csv

$(GFXGENPY)/30-individual-factors.pdf: $(DATA)/30-individual-factors.csv

$(GFXGENPY)/30-posterior-coupling.pdf: $(DATA)/30-posterior-coupling.csv

$(GFXGENPY)/30-posterior-aux.pdf: $(DATA)/30-posterior-scaling.csv $(DATA)/30-posterior-stddev.csv

$(GFXGENPY)/30-magnet-offset.py: $(DATA)/30-magnet-offset.csv

$(GFXGENPY)/30-coupling-best-fit.pdf: $(DATA)/30-coupling-best-fit-measurements.csv $(DATA)/30-coupling-best-fit-simulations.csv

$(GFXGENPY)/30-servo-tf.pdf: $(DATAGENMAT)/30-servo-tf.csv

$(GFXGENPY)/50-mirror-tfs.pdf: $(DATAGENMAT)/50-mirror-tfs.csv

$(GFXGENPY)/50-m7-seismic-noise.pdf: $(DATAGENMAT)/50-m7-seismic-noise.csv

$(GFXGENPY)/50-bhd-response.pdf: $(DATA)/50-bhd-response.csv

$(GFXGENPY)/50-pdh-response.pdf: $(DATA)/50-pdh-response.csv $(DATA)/50-bhd-response.csv

$(GFXGENPY)/50-aa-ai-filter-tfs.pdf: $(DATAGENMAT)/50-aa-ai-filter-tfs.csv

$(GFXGENPY)/50-whitening-filter-tfs.pdf: $(DATAGENMAT)/50-whitening-filter-tfs.csv

$(GFXGENPY)/50-op-amp-noise-time-series.pdf: $(DATA)/50-op-amp-noise-time-series-reduced.csv $(DATA)/50-op-amp-null-time-series-reduced.csv $(DATA)/50-op-amp-temperature-time-series-reduced.csv

$(GFXGENPY)/50-op-amp-noise-spectrum.pdf: $(DATA)/50-op-amp-noise-spectrum-reduced.csv $(DATA)/50-op-amp-null-spectrum-reduced.csv

$(GFXGENPY)/50-readout-noise-velocity.pdf: $(DATA)/50-sensing-noise-velocity.csv $(DATA)/50-feedback-noise-velocity.csv

$(GFXGENPY)/50-readout-noise-velocity-rms.pdf: $(DATA)/50-sensing-noise-velocity.csv $(DATA)/50-feedback-noise-velocity.csv

$(GFXGENPY)/50-readout-noise-mixed.pdf: $(DATA)/50-sensing-noise-velocity.csv $(DATA)/50-feedback-noise-velocity.csv $(DATA)/50-sensing-noise-mixed.csv $(DATA)/50-feedback-noise-mixed.csv

$(GFXGENPY)/50-readout-noise-mixed-rms.pdf: $(DATA)/50-sensing-noise-velocity.csv $(DATA)/50-feedback-noise-velocity.csv $(DATA)/50-sensing-noise-mixed.csv $(DATA)/50-feedback-noise-mixed.csv

$(GFXGENPY)/50-etm-suspension-tfs.pdf: $(DATA)/50-etm-suspension-tfs.csv

$(GFXGENPY)/50-controller-open-loop-gain.pdf: $(DATA)/50-controller-open-loop-gain.csv

$(GFXGENPY)/50-optimal-filters.pdf: $(DATA)/50-optimal-filters.csv

$(GFXGENPY)/50-speedmeter-noise-budget.pdf: $(DATA)/50-speedmeter-noise-budget.csv

$(GFXGENPY)/60-esd-ansys.pdf: $(DATAGENPY)/60-esd-ansys.csv

$(GFXGENPY)/60-new-amplifier-tfs.pdf: $(DATA)/60-new-amplifier-tfs-channel-a.txt $(DATA)/60-new-amplifier-tfs-channel-b.txt $(DATA)/60-new-amplifier-tfs-channel-c.txt $(DATA)/60-new-amplifier-tfs-channel-d.txt $(DATAGENMAT)/60-new-amplifier-dual-dewhitening.csv

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

$(DATAGENMAT)/30-servo-tf.csv: $(DATASCRMAT)/createWgmServoTf.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWgmServoTf('$(ROOT)/$@', logspace(-2, 5, 1000)); exit;"

$(DATAGENMAT)/50-mirror-tfs.csv: $(DATASCRMAT)/createSsmMirrorTfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createSsmMirrorTfs('$(ROOT)/$@', logspace(1, 5, 1000)); exit;"

$(DATAGENMAT)/50-m7-seismic-noise.csv: $(DATASCRMAT)/createM7SeismicNoise.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createM7SeismicNoise('$(ROOT)/$@', logspace(1, 3, 1000), 0.01); exit;"

$(DATAGENMAT)/50-aa-ai-filter-tfs.csv: $(DATASCRMAT)/createAaAiFilterTfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createAaAiFilterTfs('$(ROOT)/$@', logspace(0, 5, 1000)); exit;"

$(DATAGENMAT)/50-whitening-filter-tfs.csv: $(DATASCRMAT)/createWhiteningFilterTfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWhiteningFilterTfs('$(ROOT)/$@', logspace(-1, 4, 1000)); exit;"

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
	@rm -f *.log *.ist *.glsdefs *.acn *.bak *.bbl *.blg *.idx *.toc *.out *.run.xml *-blx.bib *.fdb_latexmk *.fls *.tex.backup *.lof *.lot *.cb* *~ *.aux *.acr *.alg *.nlo

.PHONY: superclean
superclean: clean
# remove compiled document
	@rm -f $(PROJECT).pdf
# remove dynamically generated graphics and data
	@rm -rf $(GFXGEN)/*
# FIXME: delete $(DATAGEN) but not from-matlab
	@rm -rf $(DATAGEN)/*
# remove dependencies directory
	@rm -rf $(DEPENDENCIES)
# meta info
	@rm -rf $(META)

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

$(GFXGENPY)/20-aligo-noise-budget.pdf: $(DATA)/20-aligo-noise-budget.csv

$(GFXGENPY)/30-coating-vs-grating-noise.pdf: $(DATA)/30-coating-vs-grating-noise.csv

$(GFXGENPY)/30-individual-factors.pdf: $(DATA)/30-individual-factors.csv

$(GFXGENPY)/30-posterior-coupling.pdf: $(DATA)/30-posterior-coupling.csv

$(GFXGENPY)/30-posterior-aux.pdf: $(DATA)/30-posterior-scaling.csv $(DATA)/30-posterior-stddev.csv

$(GFXGENPY)/30-magnet-offset.py: $(DATA)/30-magnet-offset.csv

$(GFXGENPY)/30-coupling-best-fit.pdf: $(DATA)/30-coupling-best-fit-measurements.csv $(DATA)/30-coupling-best-fit-simulations.csv

$(GFXGENPY)/30-servo-tf.pdf: $(DATAGENMAT)/30-servo-tf.csv

$(GFXGENPY)/40-mich-vs-fp-mich-response.pdf: $(DATAGENMAT)/40-mich-vs-fp-mich-response.csv

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

$(GFXGENPY)/60-new-amplifier-dewhitened-tfs.pdf: $(DATA)/60-new-amplifier-dewhitened-tfs-channel-a.txt $(DATA)/60-new-amplifier-dewhitened-tfs-channel-b.txt $(DATA)/60-new-amplifier-dewhitened-tfs-channel-c.txt $(DATA)/60-new-amplifier-dewhitened-tfs-channel-d.txt $(DATAGENMAT)/60-new-amplifier-dual-dewhitening-sim.csv

$(GFXGENPY)/60-new-amplifier-channel-one-tfs.pdf: $(DATA)/60-hv-amp-channel-one-tfs.csv $(DATAGENMAT)/60-new-amplifier-single-dewhitening-sim.csv $(DATAGENMAT)/60-new-amplifier-dual-dewhitening-sim.csv

$(GFXGENPY)/60-new-amplifier-coherence.pdf: $(DATA)/60-new-amplifier-coherence-channel-a.txt $(DATA)/60-new-amplifier-coherence-channel-b.txt $(DATA)/60-new-amplifier-coherence-channel-c.txt $(DATA)/60-new-amplifier-coherence-channel-d.txt

$(GFXGENPY)/60-new-amplifier-dewhitening-sims.pdf: $(DATAGENMAT)/60-new-amplifier-single-dewhitening-sim.csv $(DATAGENMAT)/60-new-amplifier-dual-dewhitening-sim.csv

$(GFXGENPY)/70-et-d-sensitivity-curves.pdf: $(DATA)/70-et-d-sensitivity-curves.txt

$(GFXGENPY)/70-reflected-power-vs-prm-transmissivity.pdf: $(DATAGENMAT)/70-reflected-power-vs-prm-transmissivity.csv

$(GFXGENPY)/70-sideband-powers-vs-srcl-tuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-srcl-tuned.csv

$(GFXGENPY)/70-sideband-powers-vs-srcl-detuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-srcl-detuned.csv

$(GFXGENPY)/70-sideband-powers-vs-schnupp-tuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-schnupp-tuned.csv

$(GFXGENPY)/70-sideband-powers-vs-schnupp-detuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-schnupp-detuned.csv

$(GFXGENPY)/70-sideband-powers-vs-second-sideband-tuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-second-sideband-tuned.csv

$(GFXGENPY)/70-sideband-powers-vs-darm-offset-tuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-darm-offset-tuned.csv

$(GFXGENPY)/70-sideband-powers-vs-darm-offset-detuned.pdf: $(DATAGENMAT)/70-sideband-powers-vs-darm-offset-detuned.csv

$(GFXGENPY)/70-sweeps-detuned.pdf: $(DATAGENMAT)/70-sweep-carm-detuned.csv $(DATAGENMAT)/70-sweep-darm-detuned.csv $(DATAGENMAT)/70-sweep-mich-detuned.csv $(DATAGENMAT)/70-sweep-prcl-detuned.csv $(DATAGENMAT)/70-sweep-srcl-detuned.csv

$(GFXGENPY)/70-et-lf-control-scheme-sensitivity-curve.pdf: $(DATAGENMAT)/70-control-scheme-darm-sensitivity.csv $(DATA)/70-et-d-sensitivity-curve-no-sqz.csv $(DATA)/70-et-lf-control-scheme-curve-finesse.csv

# ===== Data dependencies =====

$(DATAGENPY)/%.csv: $(DATASCRPY)/%.py
# call Python script to generate data
	@python $< $@

# ===== Extra data dependencies =====

$(DATAGENMAT)/30-servo-tf.csv: $(DATASCRMAT)/create_wgm_servo_tf.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_wgm_servo_tf('$(ROOT)/$@', logspace(-2, 5, 1000)); exit;"

$(DATAGENMAT)/40-mich-vs-fp-mich-response.csv: $(DATASCRMAT)/create_mich_vs_fp_mich_response.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_mich_vs_fp_mich_response('$(ROOT)/$@', logspace(-1, 5, 3000)); exit;"

$(DATAGENMAT)/50-mirror-tfs.csv: $(DATASCRMAT)/create_ssm_mirror_tfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_ssm_mirror_tfs('$(ROOT)/$@', logspace(1, 5, 1000)); exit;"

$(DATAGENMAT)/50-m7-seismic-noise.csv: $(DATASCRMAT)/create_ssm_m7_seismic_noise.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_ssm_m7_seismic_noise('$(ROOT)/$@', logspace(1, 3, 1000), 0.01); exit;"

$(DATAGENMAT)/50-aa-ai-filter-tfs.csv: $(DATASCRMAT)/create_aa_ai_filter_tfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_aa_ai_filter_tfs('$(ROOT)/$@', logspace(0, 5, 1000)); exit;"

$(DATAGENMAT)/50-whitening-filter-tfs.csv: $(DATASCRMAT)/create_ssm_whitening_filter_tfs.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_ssm_whitening_filter_tfs('$(ROOT)/$@', logspace(-1, 4, 1000)); exit;"

# data set generated from other data sets
$(DATAGENPY)/60-esd-ansys.csv: $(DATA)/60-itm.mat $(DATA)/60-etm.mat

$(DATAGENMAT)/60-new-amplifier-single-dewhitening-sim.csv: $(DATASCRMAT)/create_amp_whitening_tf.m $(DATASCRMAT)/amp_single_dewhitening.fil
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWhiteningTf('$(ROOT)/$@', 'amp_single_dewhitening.fil'); exit;"

$(DATAGENMAT)/60-new-amplifier-dual-dewhitening-sim.csv: $(DATASCRMAT)/create_amp_whitening_tf.m $(DATASCRMAT)/amp_dual_dewhitening.fil
	@matlab -nosplash -nodesktop -r "cd $(dir $<); createWhiteningTf('$(ROOT)/$@', 'amp_dual_dewhitening.fil'); exit;"

$(DATAGENMAT)/70-reflected-power-vs-prm-transmissivity.csv: $(DATASCRMAT)/create_et_lf_reflected_power_vs_pr_trans.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_reflected_power_vs_pr_trans('$(ROOT)/$@', linspace(0, 1, 1000)); exit;"

$(DATAGENMAT)/70-sideband-powers-vs-srcl-tuned.csv: $(DATASCRMAT)/create_et_lf_cavity_powers_vs_srcl_tuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_cavity_powers_vs_srcl_tuned('$(ROOT)/$@', linspace(1, 20, 1000)); exit;"

$(DATAGENMAT)/70-sideband-powers-vs-srcl-detuned.csv: $(DATASCRMAT)/create_et_lf_cavity_powers_vs_srcl_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_cavity_powers_vs_srcl_detuned('$(ROOT)/$@', linspace(1, 20, 1000)); exit;"

$(DATAGENMAT)/70-sideband-powers-vs-schnupp-tuned.csv: $(DATASCRMAT)/create_et_lf_cavity_powers_vs_schnupp_tuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_cavity_powers_vs_schnupp_tuned('$(ROOT)/$@', linspace(0, 0.5, 1000)); exit;"

$(DATAGENMAT)/70-sideband-powers-vs-schnupp-detuned.csv: $(DATASCRMAT)/create_et_lf_cavity_powers_vs_schnupp_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_cavity_powers_vs_schnupp_detuned('$(ROOT)/$@', linspace(0, 0.5, 1000)); exit;"

$(DATAGENMAT)/70-sideband-powers-vs-second-sideband-tuned.csv: $(DATASCRMAT)/create_et_lf_cavity_powers_vs_second_sideband_tuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_cavity_powers_vs_second_sideband_tuned('$(ROOT)/$@', linspace(56.7e6, 57.3e6, 1000)); exit;"

$(DATAGENMAT)/70-total-power-vs-darm-offset-tuned.csv: $(DATASCRMAT)/create_et_lf_total_power_vs_darm_offset_tuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_total_power_vs_darm_offset_tuned('$(ROOT)/$@', linspace(-1e-10, 1e-10, 1000)); exit;"

$(DATAGENMAT)/70-total-power-vs-darm-offset-detuned.csv: $(DATASCRMAT)/create_et_lf_total_power_vs_darm_offset_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_total_power_vs_darm_offset_detuned('$(ROOT)/$@', linspace(-1e-10, 1e-10, 1000)); exit;"

$(DATAGENMAT)/70-sweep-carm-detuned.csv: $(DATASCRMAT)/create_et_lf_sweep_carm_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sweep_carm_detuned('$(ROOT)/$@', 1e-10, 250); exit;"
	
$(DATAGENMAT)/70-sweep-darm-detuned.csv: $(DATASCRMAT)/create_et_lf_sweep_darm_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sweep_darm_detuned('$(ROOT)/$@', 1e-10, 250); exit;"
	
$(DATAGENMAT)/70-sweep-mich-detuned.csv: $(DATASCRMAT)/create_et_lf_sweep_mich_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sweep_mich_detuned('$(ROOT)/$@', 2e-7, 250); exit;"

$(DATAGENMAT)/70-sweep-prcl-detuned.csv: $(DATASCRMAT)/create_et_lf_sweep_prcl_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sweep_prcl_detuned('$(ROOT)/$@', 2e-8, 250); exit;"

$(DATAGENMAT)/70-sweep-srcl-detuned.csv: $(DATASCRMAT)/create_et_lf_sweep_srcl_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sweep_srcl_detuned('$(ROOT)/$@', 2e-8, 250); exit;"

$(DATAGENMAT)/70-control-scheme-darm-sensitivity.csv: $(DATASCRMAT)/create_et_lf_sensitivity_detuned.m
	@matlab -nosplash -nodesktop -r "cd $(dir $<); create_et_lf_sensitivity_detuned('$(ROOT)/$@', logspace(0, 3, 1000)); exit;"

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

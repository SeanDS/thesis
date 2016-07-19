# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# data paths
data_path_carm = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sweep-carm-detuned.csv')
data_path_darm = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sweep-darm-detuned.csv')
data_path_mich = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sweep-mich-detuned.csv')
data_path_prcl = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sweep-prcl-detuned.csv')
data_path_srcl = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sweep-srcl-detuned.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data_carm = np.genfromtxt(data_path_carm, delimiter=delimiter, skip_header=n_headers)
data_darm = np.genfromtxt(data_path_darm, delimiter=delimiter, skip_header=n_headers)
data_mich = np.genfromtxt(data_path_mich, delimiter=delimiter, skip_header=n_headers)
data_prcl = np.genfromtxt(data_path_prcl, delimiter=delimiter, skip_header=n_headers)
data_srcl = np.genfromtxt(data_path_srcl, delimiter=delimiter, skip_header=n_headers)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_D)

ax1 = fig.add_subplot(321)
ax2 = fig.add_subplot(322)
ax3 = fig.add_subplot(323)
ax4 = fig.add_subplot(324)
ax5 = fig.add_subplot(325)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_line_1 = colours.next()
colour_line_2 = colours.next()

###
# CARM

# m -> pm
x_scale_factor_carm = 1e12

# W -> mW
y_scale_factor_carm = 1e3

# combine I and Q
carm_angle = -20 # eyeball
data_carm_combined = data_carm[:, 1] * np.sin(np.radians(carm_angle)) + data_carm[:, 2] * np.cos(np.radians(carm_angle))

# plot
ax1.plot(data_carm[:, 0] * x_scale_factor_carm, data_carm_combined * y_scale_factor_carm, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax1.vlines(0, -1 * y_scale_factor_carm, 1 * y_scale_factor_carm, colors=colour_line_1, linestyles='dashed', zorder=2)

ax1.set_ylabel('Power (mW)')
ax1.set_xlabel('Offset (pm)')

ax1.set_xlim([-3e-11 * x_scale_factor_carm, 3e-11 * x_scale_factor_carm])
ax1.set_ylim([-200e-3 * y_scale_factor_carm, 200e-3 * y_scale_factor_carm])

ax1.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend([r'CARM to $\mathrm{REFL}_{\mathrm{11}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###
# DARM

# the DARM offset
darm_offset = 12e-12

# add half the DARM offset to the data to fix it to zero (Optickle zero is about the operating point)
data_darm[:, 0] += darm_offset / 2

# m -> pm
x_scale_factor_darm = 1e12

# W -> mW
y_scale_factor_darm = 1e3

# plot
ax2.plot(data_darm[:, 0] * x_scale_factor_darm, data_darm[:, 1] * y_scale_factor_darm, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax2.vlines(darm_offset * x_scale_factor_darm, 1e-3 * y_scale_factor_darm, 1e1 * y_scale_factor_darm, colors=colour_line_1, linestyles='dashed', zorder=2)

ax2.set_ylabel('Power (mW)')
ax2.set_xlabel('Offset (pm)')

ax2.set_xlim([-3e-11 * x_scale_factor_darm, 3e-11 * x_scale_factor_darm])
ax2.set_ylim([1e-3 * y_scale_factor_darm, 1e-1 * y_scale_factor_darm])

ax2.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax2.legend([r'DARM to $\mathrm{AS}_{\mathrm{DC}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###
# MICH

# m -> nm
x_scale_factor_mich = 1e9

# W -> mW
y_scale_factor_mich = 1e3

# plot
ax3.plot(data_mich[:, 0] * x_scale_factor_mich, data_mich[:, 2] * y_scale_factor_mich, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax3.vlines(0, -1 * y_scale_factor_mich, 1 * y_scale_factor_mich, colors=colour_line_1, linestyles='dashed', zorder=2)

ax3.set_ylabel('Power (mW)')
ax3.set_xlabel('Offset (nm)')

ax3.set_xlim([-5e-8 * x_scale_factor_mich, 5e-8 * x_scale_factor_mich])
ax3.set_ylim([-0.7e-3 * y_scale_factor_mich, 0.5e-3 * y_scale_factor_mich])

ax3.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax3.legend([r'MICH to $\mathrm{POP}_{\mathrm{57}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###
# PRCL

# m -> pm
x_scale_factor_prcl = 1e9

# W -> mW
y_scale_factor_prcl = 1e3

# plot
ax4.plot(data_prcl[:, 0] * x_scale_factor_prcl, data_prcl[:, 1] * y_scale_factor_prcl, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax4.vlines(0, -1 * y_scale_factor_prcl, 1 * y_scale_factor_prcl, colors=colour_line_1, linestyles='dashed', zorder=2)

ax4.set_ylabel('Power (mW)')
ax4.set_xlabel('Offset (nm)')

ax4.set_xlim([-1e-8 * x_scale_factor_prcl, 1e-8 * x_scale_factor_prcl])
ax4.set_ylim([-0.5e-3 * y_scale_factor_prcl, 0.5e-3 * y_scale_factor_prcl])

ax4.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax4.legend([r'PRCL to $\mathrm{POP}_{\mathrm{11}}$', 'Operating point'], loc='upper right', framealpha=0.8)

###
# SRCL

# SRM mirror offset
srm_offset = 4.65e-07

# SRCL signal offset
srcl_sig_offset = 4.2e-3

# add the SRM offset so that the operating point is shown around its real offset (Optickle operating point is by definition zero)
data_srcl[:, 0] += srm_offset

# m -> pm
x_scale_factor_srcl = 1e9

# W -> mW
y_scale_factor_srcl = 1e3

# plot
ax5.plot(data_srcl[:, 0] * x_scale_factor_srcl, data_srcl[:, 2] * y_scale_factor_srcl, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax5.vlines(srm_offset * x_scale_factor_srcl, -1 * y_scale_factor_srcl, 1 * y_scale_factor_srcl, colors=colour_line_1, linestyles='dashed', zorder=2)

# horizontal line for offset
ax5.hlines(srcl_sig_offset * y_scale_factor_srcl, -1e-6 * x_scale_factor_srcl, 1e-6 * x_scale_factor_srcl, colors=colour_line_2, linestyles='dashed', zorder=2)

ax5.set_ylabel('Power (mW)')
ax5.set_xlabel('Offset (nm)')

ax5.set_xlim([(srm_offset + -1e-8) * x_scale_factor_srcl, (srm_offset + 1e-8) * x_scale_factor_srcl])
ax5.set_ylim([0 * y_scale_factor_srcl, 7e-3 * y_scale_factor_srcl])

ax5.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax5.legend([r'SRCL to $\mathrm{REFL}_{\mathrm{68}}$', 'Operating point', 'Signal offset'], loc='lower left', framealpha=lf.default_settings['legend.framealpha'])

###

plt.tight_layout()

plt.savefig(save_path)
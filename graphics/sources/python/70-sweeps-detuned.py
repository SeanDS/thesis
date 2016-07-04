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

darm_offset = 12e-12

# add half the DARM offset to the data to fix it to zero (Optickle zero is about the operating point)
data_darm[:, 0] += darm_offset / 2

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
colour_b = colours.next()
colour_c = colours.next()
colour_line = colours.next()

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
ax1.vlines(0, -1 * y_scale_factor_carm, 1 * y_scale_factor_carm, colors=colour_line, linestyles='dashed', zorder=2)

ax1.set_ylabel('Power (mW)')
ax1.set_xlabel('Offset (pm)')

ax1.set_xlim([-3e-11 * x_scale_factor_carm, 3e-11 * x_scale_factor_carm])
ax1.set_ylim([-200e-3 * y_scale_factor_carm, 200e-3 * y_scale_factor_carm])

ax1.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend([r'CARM to $\mathrm{REFL}_{\mathrm{11}}$', 'Operating point'], loc='lower left', framealpha=0.8)

###
# DARM

# m -> pm
x_scale_factor_darm = 1e12

# W -> mW
y_scale_factor_darm = 1e3

# plot
ax2.plot(data_darm[:, 0] * x_scale_factor_darm, data_darm[:, 1] * y_scale_factor_darm, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax2.vlines(darm_offset * x_scale_factor_darm, 1e-3 * y_scale_factor_darm, 1e1 * y_scale_factor_darm, colors=colour_line, linestyles='dashed', zorder=2)

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

# m -> pm
x_scale_factor_mich = 1e12

# W -> mW
y_scale_factor_mich = 1e3

# combine I and Q
mich_angle = -55 # eyeball
prcl_angle = 55 # eyeball, opposite sign due to driving matrix sign
srcl_angle = 55 # eyeball, opposite sign due to driving matrix sign
data_mich_combined = data_mich[:, 1] * np.sin(np.radians(mich_angle)) + data_mich[:, 2] * np.cos(np.radians(mich_angle))
data_prcl_combined = data_mich[:, 3] * np.sin(np.radians(prcl_angle)) + data_mich[:, 4] * np.cos(np.radians(prcl_angle))
data_srcl_combined = data_mich[:, 5] * np.sin(np.radians(srcl_angle)) + data_mich[:, 6] * np.cos(np.radians(srcl_angle))

# plot
ax3.plot(data_mich[:, 0] * x_scale_factor_mich, data_mich_combined * y_scale_factor_mich, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax3.plot(data_mich[:, 0] * x_scale_factor_mich, data_prcl_combined * y_scale_factor_mich, '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax3.plot(data_mich[:, 0] * x_scale_factor_mich, data_srcl_combined * y_scale_factor_mich, '-', color=colour_c, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax3.vlines(0, -1 * y_scale_factor_mich, 1 * y_scale_factor_mich, colors=colour_line, linestyles='dashed', zorder=2)

ax3.set_ylabel('Power (mW)')
ax3.set_xlabel('Offset (pm)')

ax3.set_xlim([-0.5e-9 * x_scale_factor_mich, 0.5e-9 * x_scale_factor_mich])
ax3.set_ylim([-30e-3 * y_scale_factor_mich, 30e-3 * y_scale_factor_mich])

ax3.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax3.legend([r'MICH to $\mathrm{REFL}_{\mathrm{57}}$', r'PRCL to $\mathrm{REFL}_{\mathrm{57}}$', r'SRCL to $\mathrm{REFL}_{\mathrm{57}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###
# PRCL

# m -> pm
x_scale_factor_prcl = 1e9

# W -> mW
y_scale_factor_prcl = 1e3

# combine I and Q
prcl_angle = -50 # eyeball
mich_angle = 50 # eyeball, opposite sign due to driving matrix sign
srcl_angle = -50 # eyeball
data_prcl_combined = data_prcl[:, 1] * np.sin(np.radians(prcl_angle)) + data_prcl[:, 2] * np.cos(np.radians(prcl_angle))
data_mich_combined = data_prcl[:, 3] * np.sin(np.radians(mich_angle)) + data_prcl[:, 4] * np.cos(np.radians(mich_angle))
data_srcl_combined = data_prcl[:, 5] * np.sin(np.radians(srcl_angle)) + data_prcl[:, 6] * np.cos(np.radians(srcl_angle))

# plot
ax4.plot(data_prcl[:, 0] * x_scale_factor_prcl, data_prcl_combined * y_scale_factor_prcl, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax4.plot(data_prcl[:, 0] * x_scale_factor_prcl, data_mich_combined * y_scale_factor_prcl, '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax4.plot(data_prcl[:, 0] * x_scale_factor_prcl, data_srcl_combined * y_scale_factor_prcl, '-', color=colour_c, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax4.vlines(0, -1 * y_scale_factor_prcl, 1 * y_scale_factor_prcl, colors=colour_line, linestyles='dashed', zorder=2)

ax4.set_ylabel('Power (mW)')
ax4.set_xlabel('Offset (nm)')

ax4.set_xlim([-1e-8 * x_scale_factor_prcl, 1e-8 * x_scale_factor_prcl])
ax4.set_ylim([-0.5e-3 * y_scale_factor_prcl, 0.5e-3 * y_scale_factor_prcl])

ax4.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax4.legend([r'PRCL to $\mathrm{POP}_{\mathrm{11}}$', r'MICH to $\mathrm{POP}_{\mathrm{11}}$', r'SRCL to $\mathrm{POP}_{\mathrm{11}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###
# SRCL

# m -> pm
x_scale_factor_srcl = 1e9

# W -> mW
y_scale_factor_srcl = 1e3

# combine I and Q
srcl_angle = -50 # eyeball
mich_angle = 50 # eyeball, opposite sign due to driving matrix sign
prcl_angle = -50 # eyeball
data_srcl_combined = data_srcl[:, 1] * np.sin(np.radians(srcl_angle)) + data_srcl[:, 2] * np.cos(np.radians(srcl_angle))
data_mich_combined = data_srcl[:, 3] * np.sin(np.radians(mich_angle)) + data_srcl[:, 4] * np.cos(np.radians(mich_angle))
data_prcl_combined = data_srcl[:, 5] * np.sin(np.radians(prcl_angle)) + data_srcl[:, 6] * np.cos(np.radians(prcl_angle))

# plot
ax5.plot(data_srcl[:, 0] * x_scale_factor_srcl, data_srcl_combined * y_scale_factor_srcl, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax5.plot(data_srcl[:, 0] * x_scale_factor_srcl, data_mich_combined * y_scale_factor_srcl, '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax5.plot(data_srcl[:, 0] * x_scale_factor_srcl, data_prcl_combined * y_scale_factor_srcl, '-', color=colour_c, alpha=lf.ALPHA_LINE_A)

# vertical line for operating point
ax5.vlines(0, -1 * y_scale_factor_srcl, 1 * y_scale_factor_srcl, colors=colour_line, linestyles='dashed', zorder=2)

ax5.set_ylabel('Power (mW)')
ax5.set_xlabel('Offset (nm)')

ax5.set_xlim([-1e-8 * x_scale_factor_srcl, 1e-8 * x_scale_factor_srcl])
ax5.set_ylim([-20e-3 * y_scale_factor_srcl, 20e-3 * y_scale_factor_srcl])

ax5.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax5.legend([r'SRCL to $\mathrm{REFL}_{\mathrm{45}}$', r'MICH to $\mathrm{REFL}_{\mathrm{45}}$', r'PRCL to $\mathrm{REFL}_{\mathrm{45}}$', 'Operating point'], loc='upper left', framealpha=0.8)

###

plt.tight_layout()

plt.savefig(save_path)
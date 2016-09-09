# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import scipy.signal as signal
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)
ax3 = ax2.twinx()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()

# frequencies
f = np.logspace(-1, 5, 1000)

# make a signal that is flat up to 10 Hz and rolls off above
sig = 1 / np.sqrt(1 / (1e2 ** 2) + 1 / ((1e2 / f) ** 2))

# ABCD coefficients calculated with MATLAB for simple high-pass
a = -1.8850e+04
b = 1
c = -1.8661e+06
d = 100

# filter
whitener = signal.lti(a, b, c, d)
[_, response] = whitener.freqresp(f * 2 * np.pi)
# absolute response
absresp = np.absolute(response)

# unwhitened
ax1.semilogx(f, 20 * np.log10(sig), '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
# whitened
ax1.semilogx(f, 20 * np.log10(sig * absresp), '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

# noise level
ax1.hlines(0, 1e-1, 1e5, colors=colour_c, linestyles='dashed', zorder=2)

# filter TF
p1 = ax2.loglog(f, absresp, '-', color=colour_d, alpha=lf.ALPHA_LINE_A)
p2 = ax3.semilogx(f, np.angle(response) * 180 / np.pi, '--', color=colour_d, alpha=lf.ALPHA_LINE_A)

with plt.rc_context({'legend.borderaxespad': 0.5}):
    ax1.legend(['Unwhitened', 'Whitened', 'Sensor noise'], loc='lower left')
    ax2.legend(p1+p2, ['Magnitude', 'Phase'], loc='upper left')

ax1.set_ylim([-50, 50])
ax1.set_ylabel('SNR (dB)')
ax2.set_xlabel('Frequency (Hz)')
ax2.set_ylabel('Magnitude')
ax3.set_ylabel(u'Phase (°)')

ax1.grid(True)
ax2.grid(True)

plt.tight_layout()

plt.savefig(save_path)
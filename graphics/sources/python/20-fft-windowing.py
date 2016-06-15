# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import scipy.signal
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

amplitude = 1
period = 1
f = 2499
fs = 10000

t = np.arange(0, period, 1 / fs)

x = np.sin(2 * np.pi * f * t)

# windowed
[fvec_1, Pxx_1] = scipy.signal.welch(x, fs=fs, window='hann', nperseg=1000, noverlap=None)

# unwindowed (or, rather, boxcar window)
[fvec_2, Pxx_2] = scipy.signal.welch(x, fs=fs, window='boxcar', nperseg=1000, noverlap=None)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.gca()

ax1.semilogy(fvec_1, Pxx_1, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.semilogy(fvec_2, Pxx_2, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.vlines(f, 1e-35, 1e2, colors=colours.next(), linestyles='dashed', zorder=2)

ax1.set_ylim([1e-20, 1])

ax1.set_xlabel('Frequency (Hz)')
ax1.set_ylabel(r'Power ($\mathrm{Amplitude}^2$ / Hz)')

ax1.legend(['PSD estimate (Hanning window)', 'PSD estimate (flat window)', 'Signal frequency'], loc='lower left')

plt.grid(True)

plt.tight_layout()

plt.savefig(save_path)
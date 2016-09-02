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

# data path
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-esd-measurements.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=2)

# from time difference
fs = 1 / (data[1, 0] - data[0, 0])

# number of points per FFT
nperseg = 10000

# FFT of 700mHz injection
[f, p_700m_in] = scipy.signal.welch(data[:, 2], fs=fs, window='hann', nperseg=nperseg)
# FFT of 700mHz measurement
[_, p_700m_out] = scipy.signal.welch(data[:, 1], fs=fs, window='hann', nperseg=nperseg, noverlap=None)

# FFT of 900mHz injection
#[_, p_900m_in] = scipy.signal.welch(data[:, 3], fs=fs, window='hann', nperseg=nperseg, noverlap=None)
# FFT of 900mHz measurement
#[_, p_900m_out] = scipy.signal.welch(data[:, 4], fs=fs, window='hann', nperseg=nperseg, noverlap=None)

# FFT of 1080mHz injection
#[_, p_1080m_in] = scipy.signal.welch(data[:, 5], fs=fs, window='hann', nperseg=nperseg, noverlap=None)
# FFT of 1080mHz measurement
#[_, p_1080m_out] = scipy.signal.welch(data[:, 6], fs=fs, window='hann', nperseg=nperseg, noverlap=None)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(111)
ax2 = ax1.twinx()

ax1.loglog(f, p_700m_in, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax2.loglog(f, p_700m_out, color=colours.next(), alpha=lf.ALPHA_LINE_A)

ax1.set_xlim([0.5, 2])

#ax1.set_ylim([1e-20, 1])

#ax1.set_xlabel('Frequency (Hz)')
#ax1.set_ylabel(r'Power ($\mathrm{Amplitude}^2$ / Hz)')

#ax1.legend(['PSD estimate (Hanning window)', 'PSD estimate (flat window)', 'Signal frequency'], loc='lower left')

ax1.grid(True)
ax2.grid(True)

plt.tight_layout()

plt.show()
#plt.savefig(save_path)
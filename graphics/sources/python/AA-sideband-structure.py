# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import numpy.fft as fft
import scipy.special as special
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.subplot(211)
ax2 = plt.subplot(212)

# turn off y-axis graphics
tick_params = {
    'axis': 'both',
    'which': 'both',
    'left': 'off',
    'labelleft': 'off',
    'right': 'off',
    'labelright': 'off',
    'top': 'off',
    'labeltop': 'off'}

ax1.tick_params(**tick_params)
ax2.tick_params(**tick_params)

# turn off all spines except lower x
ax1.spines['left'].set_visible(False)
ax1.spines['right'].set_visible(False)
ax1.spines['top'].set_visible(False)
ax2.spines['left'].set_visible(False)
ax2.spines['right'].set_visible(False)
ax2.spines['top'].set_visible(False)

# colour wheel
colours = lf.Colours()

# get colours
c1 = colours.next() # carrier
c2 = colours.next() # phase modulation sidebands
c3 = colours.next() # amplitude modulation sidebands

# arrow arguments
args = {'width': lf.ARROW_WIDTH, 'head_width': lf.ARROW_HEAD_WIDTH, 'head_length': lf.ARROW_HEAD_LENGTH, 'overhang': lf.ARROW_OVERHANG, 'length_includes_head': True}

# phase modulation
def pm(E_0, omega_0, t, m, omega, n):
  
  # ith Bessel coefficient
  def ji(E_0, omega_0, t, m, omega, i):
    return 1j ** i * special.jv(i, m) * np.exp(1j * i * omega * t)
  
  # return list of coefficients up to nth, multiplied by carrier
  return E_0 * np.exp(1j * omega_0 * t) * [ji(E_0, omega_0, t, m, omega, ii) for ii in xrange(-i, i)]

E_0 = 8
m = 1

## plot amplitude modulation sidebands
# carrier
p1 = ax1.arrow(0, 0, 0, E_0, color=c1, **args)

# sidebands
p2 = ax1.arrow(-0.5, 0, 0, E_0 * m / 2, color=c3, **args)
ax1.arrow(0.5, 0, 0, E_0 * m / 2, color=c3, **args)

## plot phase modulation sidebands
#carrier
p3 = ax2.arrow(0, 0, 0, E_0 * special.jv(0, m), color=c1, **args)
# first order sidebands
p4 = ax2.arrow(-0.5, 0, 0, E_0 * special.jv(1, m), color=c2, **args)
ax2.arrow(0.5, 0, 0, E_0 * special.jv(1, m), color=c2, **args)
# second order
ax2.arrow(-1, 0, 0, E_0 * special.jv(2, m), color=c2, **args)
ax2.arrow(1, 0, 0, E_0 * special.jv(2, m), color=c2, **args)
# third order
ax2.arrow(-1.5, 0, 0, E_0 * special.jv(3, m), color=c2, **args)
ax2.arrow(1.5, 0, 0, E_0 * special.jv(3, m), color=c2, **args)

ax1.legend([p1, p2], ['Carrier', 'AM sidebands'])

# have to set ticks to be same as for ax2, but hide labels to
# make it seem like they share x-axes (otherwise it would say
# "Frequency" only on x-axis 2 but have labels on both)
ax1.set_xticks([-1.5, -1, -0.5, 0, 0.5, 1, 1.5])
ax1.set_xticklabels([])

ax2.legend([p3, p4], ['Carrier', 'PM sidebands'])

ax2.set_xticks([-1.5, -1, -0.5, 0, 0.5, 1, 1.5])
ax2.set_xticklabels([r'$\omega_0-3\omega$', r'$\omega_0-2\omega$', r'$\omega_0-\omega$', r'$\omega_0$', r'$\omega_0+\omega$', r'$\omega_0+2\omega$', r'$\omega_0+3\omega$'])

ax1.set_ylabel(r'Power $\left(\textrm{arb. units}\right)$')
ax2.set_ylabel(r'Power $\left(\textrm{arb. units}\right)$')
ax2.set_xlabel('Frequency')

ax1.grid(True)
ax2.grid(True)

ax1.set_xlim([-1.8, 1.8])
ax1.set_ylim([0, 8])
ax2.set_xlim([-1.8, 1.8])
ax2.set_ylim([0, 8])

plt.tight_layout()

plt.savefig(save_path)
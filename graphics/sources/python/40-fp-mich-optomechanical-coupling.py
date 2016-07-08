# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

def I_sql(m, L, gamma, f_0):
  """Intensity required to reach SQL"""
  return (m * L ** 2 * gamma ** 4) / (8 * np.pi * f_0)

# optomechanical coupling constant
def kappa(f, f_0, m, L, gamma, I):
  """optomechanical coupling constant
  
  I = intensity
  gamma = arm cavity half-bandwidth
  f = frequency
  """
  
  return (2 * (I / I_sql(m, L, gamma, f_0)) * gamma ** 4) / (f ** 2 * (gamma ** 2 + f ** 2))

f = np.logspace(-1, 5, 3000)
c = 299792458
lambda0 = 1064e-9
f_0 = c / lambda0
m = 40
L = 1000
gamma = 250
I = 20000 # cavity power, from Optickle

k = kappa(f, f_0, m, L, gamma, I)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_B)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()

# plot coupling
ax1.loglog(f, k, color=colour_a, alpha=lf.ALPHA_LINE_A)

ax1.grid(True)

#ax1.set_xlim((1e-1, 1e5))
#ax1.set_ylim((1e-11, 1e-6))

# set labels
ax1.set_ylabel('Optomechanical\ncoupling')
ax1.set_xlabel('Frequency (Hz)')

plt.tight_layout()

plt.savefig(save_path)
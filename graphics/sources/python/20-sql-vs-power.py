# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

h = 6.626070040e-34
h_bar = h / (2 * np.pi)

# strain sql
def S_h_sql(f, m, L):
  """Strain SQL
  
  f = frequency vector
  m = reduced mass
  L = arm length
  """
  
  return np.sqrt(8 * h_bar / (m * f ** 2 * L ** 2))

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

# strain for power
def S_h(f, f_0, m, L, gamma, I):
  k = kappa(f, f_0, m, L, gamma, I)
  
  return np.sqrt(((S_h_sql(f, m, L) ** 2) / 2) * (1 / k + k))

f = np.logspace(1, 4, 1000)
f_0 = 3e8 / 1064e-9
m = 50
L = 1000
gamma = 100 * 2 * np.pi
powers = [1, 1e3, 1e6]
labels = ['1 W', '1 kW', '1 MW']

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

# first axis
ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

# plot powers
for power in powers:
  ax1.loglog(f, S_h(f, f_0, m, L, gamma, power), '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)

# plot SQL
ax1.loglog(f, S_h_sql(f, m, L), '--', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)

labels.append("SQL")

ax1.legend(labels, loc='lower left')

ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax1.set_ylabel(r'Strain $\left(\frac{1}{\sqrt{\SI{}{\hertz}}}\right)$')
ax1.grid(True)

#ax1.set_xlim([-0.75, 0.75])
#ax1.set_ylim([1e-3, 1e3])

fig.tight_layout()

plt.savefig(save_path)
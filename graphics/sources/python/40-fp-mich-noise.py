# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

h = 6.626070040e-34
h_bar = h / (2 * np.pi)

# first argument should be save path
save_path = sys.argv[1]

def I_sql(m, L, gamma, f_0):
  """Intensity required to reach SQL"""
  return (m * L ** 2 * gamma ** 4) / (8 * np.pi * f_0)

def h_sql(m, f, L):
  """Strain SQL"""
  
  return np.sqrt((8 * h_bar) / (m * f ** 2 * L ** 2))

# optomechanical coupling constant
def kappa(f, f_0, m, L, gamma, I_cav):
  """optomechanical coupling constant
  
  I = intensity
  gamma = arm cavity half-bandwidth
  f = frequency
  """
  
  # override I to set it to 1, which makes the SQL touching frequency equal to the pole
  #I = I_cav / I_sql(m, L, gamma, f_0))
  I = 1
  
  return (2 * I * gamma ** 4) / (f ** 2 * (gamma ** 2 + f ** 2))

def beta(f, gamma):
  """Round-trip phase of cavity"""
  
  return np.arctan2(f, gamma)

def noise(f, f_0, m, L, gamma, I):
  """noise in phase quadrature"""
  
  # phase quadrature readout
  H = np.array([0, 1])
  
  # kappa
  k = kappa(f, f_0, m, L, gamma, I)
  
  # noise spectral density
  return [np.dot(np.dot(H.T, np.array([[1, -ki], [-ki, 1 + ki**2]])), H) for ki in k]

f = np.logspace(0, 5, 3000)
c = 299792458
lambda0 = 1064e-9
f_0 = c / lambda0
m = 40
L = 1000
gamma = 250
I = 1

qn = noise(f, f_0, m, L, gamma, I)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
# skip colour so it's the same as the SSM case
colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(f, qn, color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.hlines(1, 1e0, 1e5, colors=colour_b, linestyles='dashed', zorder=2)

ax1.legend(['Michelson position-meter', 'Quantum shot noise'], loc='upper right')

ax1.grid(True)

#ax1.set_xlim((1e-1, 1e5))
ax1.set_ylim((1e-1, 1e10))

# set labels
ax1.set_ylabel(r'Normalised noise $\left(\frac{1}{\SI{}{\hertz}}\right)$')
ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')

ax1.set_yticks([1e0, 1e2, 1e4, 1e6, 1e8, 1e10])

plt.tight_layout()

plt.savefig(save_path)
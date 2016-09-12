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
def kappa_mich(f, f_0, m, L, gamma, I_cav):
  """optomechanical coupling constant
  
  I = intensity
  gamma = arm cavity half-bandwidth
  f = frequency
  """
  
  # override I to set it to 1, which makes the SQL touching frequency equal to the pole
  #I = I_cav / I_sql(m, L, gamma, f_0))
  I = 1
  
  return (2 * I * gamma ** 4) / (f ** 2 * (gamma ** 2 + f ** 2))

def kappa(f, f_0, m, L, gamma, I_cav):
  """SSM kappa"""
  
  km = kappa_mich(f, f_0, m, L, gamma, I_cav)
  b = beta_mich(f, gamma)
  
  return 4 * km * np.sin(b) ** 2

def beta_mich(f, gamma):
  """Round-trip phase of cavity"""
  
  return np.arctan2(f, gamma)

def beta(f, gamma):
  """SSM beta"""
  
  return 2 * beta_mich(f, gamma) + np.pi / 2

def response(f, f_0, m, L, gamma, I):
  """response to DARM"""
  
  return np.exp(1j * beta(f, gamma)) * np.sqrt(2 * kappa(f, f_0, m, L, gamma, I)) / h_sql(m, f, L)

def response_mich(f, f_0, m, L, gamma, I):
  return np.exp(1j * beta_mich(f, gamma)) * np.sqrt(2 * kappa_mich(f, f_0, m, L, gamma, I)) / h_sql(m, f, L)

f = np.logspace(0, 5, 3000)
c = 299792458
lambda0 = 1064e-9
f_0 = c / lambda0
m = 40
L = 1000
gamma = 250
I = 1

resp = response(f, f_0, m, L, gamma, I)
resp_mich = response_mich(f, f_0, m, L, gamma, I)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(f, np.abs(resp), color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, np.abs(resp_mich), color=colour_b, alpha=lf.ALPHA_LINE_A, zorder=-1)

# plot phase
ax2.semilogx(f, np.angle(resp) * 180 / np.pi, color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(f, np.angle(resp_mich) * 180 / np.pi, color=colour_b, alpha=lf.ALPHA_LINE_A, zorder=-1)

ax1.legend(['Sagnac speed-meter', 'Michelson position-meter'], loc='upper right', framealpha=lf.default_settings['legend.framealpha'])

ax1.grid(True)
ax2.grid(True)

#ax1.set_xlim((1e-1, 1e5))
#ax1.set_ylim((1e6, 1e11))
ax2.set_ylim((-200, 200))

# set labels
ax1.set_ylabel('Response\n(1 / sqrt(Hz))')
ax2.set_xlabel('Frequency (Hz)')
ax2.set_ylabel(u'Phase (deg)')#, color=ax2colour)

# set phase ticks
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

plt.tight_layout()

plt.savefig(save_path)
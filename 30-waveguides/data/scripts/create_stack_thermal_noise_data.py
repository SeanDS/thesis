from __future__ import division

import sys
import os
import scipy.io
import numpy as np
import csv

# Calculates thermal noise for an Advanced LIGO style ETM, but at 10K and for 1550nm light

# Writes a CSV file at the location specified in the first argument, containing the coating Brownian thermal noise for the given number of layers in the second argument.

# Data produced by Christian Graef for the Glasgow Sagnac Speedmeter Experiment
# (group members see https://arran.physics.gla.ac.uk/wp/speedmeter/?p=4507)

# save path
path = sys.argv[1]

# number of layers
num_layers = int(sys.argv[2])

###
# Calculation
#
# Follows Harry 2002. Script adapted from Daniel Heinert's Mathematica model.
# Parameters are for the Advanced LIGO ETMs.

kb = 1.38e-23
r0 = 0.09 / np.sqrt(2)
f = 100
Y = 130e9
nu = 0.28
T = 10
lambda0 = 1550e-9
Ys1 = 140e9
nus1 = 0.23
n1 = 2.07
phi1 = 4e-4
Ys2 = 72e9
nus2 = 0.17
n2 = 1.45
phi2 = 4.5e-4

def h1(n):
    return n * lambda0 / 4 / n1

def h2(n):
    return (n + 1) * lambda0 / 4 / n2

def S(nus, Ys, phi, h):
    return kb * T / np.pi ** 2 / f * (1 - nu ** 2) / r0 ** 2 / Y * h * (1 / (Y * Ys * (1 - nus ** 2) * (1 - nu ** 2))) * (Ys ** 2 * (1 + nu) ** 2 * (1 - 2 * nu) ** 2 * phi + Y ** 2 * (1 + nus) ** 2 * (1 - 2 * nus) * phi)

def S_stack(n):
    S1 = S(nus1, Ys1, phi1, h1(n))
    S2 = S(nus2, Ys2, phi2, h2(n))

    return np.sqrt(S1 + S2)

###
# Write to file

# write CSV
with open(path, "wb") as csv_file:
    writer = csv.writer(csv_file)
    
    # headers
    writer.writerow(['Layers', 'Thermal noise [m / sqrt(Hz)]'])
    
    # data
    for i in xrange(num_layers, 0, -1):
        writer.writerow([i, S_stack(i)])
# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.basemap import Basemap
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# detector data, from https://github.com/lscsoft/lalsuite/blob/master/lal/src/tools/LALDetectors.h
detectors = [
    { # GEO
        'name': 'GEO 600',
        'lat': 0.91184982752 * 180 / np.pi,
        'lon': 0.17116780435 * 180 / np.pi
    },
    { # KAGRA
        'name': 'KAGRA',
        'lat': 0.6355068497 * 180 / np.pi,
        'lon': 2.396441015 * 180 / np.pi
    },
    { # LIGO Hanford
        'name': 'LIGO Hanford',
        'lat': 0.81079526383 * 180 / np.pi,
        'lon': -2.08405676917 * 180 / np.pi
    },
    { # LIGO Louisiana
        'name': 'LIGO Louisiana',
        'lat': 0.53342313506 * 180 / np.pi,
        'lon': -1.58430937078 * 180 / np.pi
    },
    { # LIGO India (guess)
        'name': 'LIGO India',
        'lat': 0.3 * 180 / np.pi,
        'lon': 1.35 * 180 / np.pi
    },
    { # Virgo
        'name': 'Virgo',
        'lat': 0.76151183984 * 180 / np.pi,
        'lon': 0.18333805213 * 180 / np.pi
    }
]
    
fig = plt.figure(figsize=lf.FIG_SIZE_A)

m = Basemap(projection='merc',llcrnrlat=-56,urcrnrlat=72,\
            llcrnrlon=-180,urcrnrlon=180,lat_ts=0, resolution='c')

colours = lf.Colours()

m.fillcontinents(color=colours.shades['lightgrey'])

# add detectors
# override the default look and feel for the markers
with plt.rc_context({'lines.markeredgewidth': 1, 'lines.markersize': 7}):
    for detector in detectors:    
        x, y = m(detector['lon'], detector['lat'])
    
        m.plot(x, y, 'o', color=colours.next())

    plt.legend([detector['name'] for detector in detectors], numpoints=1, loc='lower left')

plt.tight_layout()

plt.savefig(save_path)
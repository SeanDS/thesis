# -*- coding: utf-8 -*-
from __future__ import division

import matplotlib

"""Look and feel settings for Sean's thesis"""

# Document text width (use \the\textwidth in LaTeX to get)
DOC_TEXT_WIDTH = 323 # pt

def latex_dimension(scale):
    inches_per_pt = 1 / 72.27 # pt to inches
    dimension_inches = DOC_TEXT_WIDTH * inches_per_pt * scale # width in inches
    
    return dimension_inches

def latex_dimensions(scaleA, scaleB=None):
    if scaleB is None:
        scaleB = scaleA
    
    return latex_dimension(scaleA), latex_dimension(scaleB)

###
# Useful quantities

# default fig size
FIG_SIZE_A = latex_dimensions(1, 0.75)

# smaller fig size (shrunken height)
FIG_SIZE_A_SM = latex_dimensions(1, 0.5)

# faller fig size (extra height)
FIG_SIZE_A_TALL = latex_dimensions(1, 1)

# narrower figure (to fit an outer legend)
FIG_SIZE_B = latex_dimensions(0.75, 0.75)

# big figure for full page
FIG_SIZE_D = latex_dimensions(1, 1.25)

# default line transparency
ALPHA_LINE_A = 0.8

# arrow widths
ARROW_WIDTH = 0.02
ARROW_HEAD_WIDTH = 0.1
ARROW_HEAD_LENGTH = 0.5
ARROW_OVERHANG = 0.3

# line widths
LW_NORMAL = 1.5
LW_THICK = LW_NORMAL * 2

###
# Matplotlib settings

default_settings = {
    'pgf.texsystem': 'pdflatex',
    'pgf.rcfonts': False,
    'pgf.preamble': [
        r'\usepackage[utf8x]{inputenc}',
        r'\usepackage[T1]{fontenc}',
        r'\usepackage{siunitx}'
    ],
    'text.usetex': True,
    'font.serif': [],
    'font.sans-serif': [],
    'font.monospace': [],
    'font.size': 10,
    'grid.alpha': 0.5,
    'grid.linestyle': ':',
    'legend.borderaxespad': 1,
    'legend.fancybox': True,
    'legend.fontsize': 8,
    'legend.framealpha': 0.9,
    'lines.linewidth': LW_NORMAL,
    'lines.markeredgewidth': 2,
    'lines.markersize': 8,
    'xtick.major.pad': 10,
    'xtick.minor.pad': 10,
    'xtick.labelsize': 10,
    'ytick.major.pad': 10,
    'ytick.minor.pad': 10,
    'ytick.labelsize': 10
}

# set defaults
matplotlib.rcParams.update(default_settings)

class Colours(object):
    """Colours iterable"""
    
    """Index of current colour"""
    current_index = None
    
    """Index of last colour"""
    end_index = None
    
    # plot colour scheme
    # http://www.randalolson.com/2014/06/28/how-to-make-beautiful-data-visualizations-in-python-with-matplotlib/
    # arrangement is list of lists containing a colour and a lighter variety
    colours = [[(31, 119, 180), (174, 199, 232)], # blue
                [(255, 127, 14), (255, 187, 120)], # orange
                [(44, 160, 44), (152, 223, 138)], # green
                [(214, 39, 40), (255, 152, 150)], # red
                [(148, 103, 189), (197, 176, 213)], # purple
                [(140, 86, 75), (196, 156, 148)], # mauve/brown
                [(227, 119, 194), (247, 182, 210)], # lilac
                [(127, 127, 127), (199, 199, 199)], # grey
                [(188, 189, 34), (219, 219, 141)], # lime green
                [(23, 190, 207), (158, 218, 229)]] # turquois
    
    shades = {'black': (0, 0, 0), 'grey': (127, 127, 127), 'lightgrey': (199, 199, 199)}
    
    def __init__(self):
        self.current_index = 0
        self.end_index = len(self.colours)
        
        # scale to range [0, 1] for matplotlib
        for i in range(len(self.colours)):
            for j in range(len(self.colours[i])):
                r, g, b = self.colours[i][j]
                self.colours[i][j] = (r / 255, g / 255, b / 255)
        
        for shade in self.shades:
            r, g, b = self.shades[shade]
            self.shades[shade] = (r / 255, g / 255, b / 255)
    
    def __iter__(self):
        return self
    
    def next(self):
        """Gets the next colour in the chain"""
        
        if self.current_index > self.end_index:
            raise StopIteration
        else:
            self.current_index += 1
            
            return self.colours[self.current_index - 1][0]
    
    def current(self):
        """Returns current colour"""
        
        return self.colours[self.current_index - 1][0]
    
    def alternate(self, colour):
        """Returns the lighter or darker variety of the specified colour"""
        
        for colour_set in self.colours:
            if colour in colour_set:
                if colour is colour_set[0]:
                    index = 1
                else:
                    index = 0
                
                return colour_set[index]

def scale_fonts(factor):
    factor = float(factor)
  
    """Scales fonts by factor, for instance to handle LaTeX subplots"""
    matplotlib.rcParams.update({
	'font.size': default_settings['font.size'] * factor,
	'legend.fontsize': default_settings['legend.fontsize'] * factor,
	'xtick.labelsize': default_settings['xtick.labelsize'] * factor,
	'ytick.labelsize': default_settings['ytick.labelsize'] * factor
    })

def scale_markers(factor):
    factor = float(factor)
    
    """Scales markers, lines, etc. by factor"""
    matplotlib.rcParams.update({
	'lines.linewidth': default_settings['lines.linewidth'] * factor,
	'lines.markeredgewidth': default_settings['lines.markeredgewidth'] * factor,
	'lines.markersize': default_settings['lines.markersize'] * factor
    })
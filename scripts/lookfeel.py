from __future__ import division
import matplotlib

"""Look and feel settings for Sean's thesis"""

###
# Useful quantities

# default fig size
FIG_SIZE_A = (10, 7)

# smaller fig size (for two plots side-by-side)
FIG_SIZE_A_SM = (FIG_SIZE_A[0], FIG_SIZE_A[1] / 1.41)

# faller fig size (for Bode-style plots)
FIG_SIZE_A_TALL = (FIG_SIZE_A[0], FIG_SIZE_A[1] * 1.41)

# shallow figure for simple plots
FIG_SIZE_B = (10, 3.5)

# default line transparency
ALPHA_LINE_A = 0.8

# arrow widths
ARROW_WIDTH = 0.02
ARROW_HEAD_WIDTH = 0.1
ARROW_HEAD_LENGTH = 0.5
ARROW_OVERHANG = 0.3

# line widths
LW_NORMAL = 2
LW_THICK = LW_NORMAL * 2

###
# Matplotlib settings

default_settings = {
    'font.sans-serif': ['Linux Biolinum O'], 
    'font.size': 20,
    'grid.alpha': 0.5,
    'grid.linestyle': ':',
    'legend.borderaxespad': 1,
    'legend.fancybox': True,
    'legend.fontsize': 16,
    'legend.framealpha': 0.9,
    'lines.linewidth': LW_NORMAL,
    'lines.markeredgewidth': 3,
    'lines.markersize': 15,
    'xtick.major.pad': 10,
    'xtick.minor.pad': 10,
    'xtick.labelsize': 16,
    'ytick.major.pad': 10,
    'ytick.minor.pad': 10,
    'ytick.labelsize': 16
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
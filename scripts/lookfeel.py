from __future__ import division
import matplotlib

"""Look and feel settings for Sean's thesis"""

###
# Useful quantities

# default fig size
FIG_SIZE_A = (10, 7)

# half-width fig size
FIG_SIZE_A_HW = (FIG_SIZE_A[0] / 2, FIG_SIZE_A[1])

# default line transparency
ALPHA_LINE_A = 0.8

# arrow widths
ARROW_WIDTH = 0.02
ARROW_HEAD_WIDTH = 0.1
ARROW_HEAD_LENGTH = 0.5
ARROW_OVERHANG = 0.3

###
# Matplotlib settings

# set defaults
matplotlib.rcParams.update(
    {
        'font.size': 20,
        'grid.alpha': 0.5,
        'grid.linestyle': ':',
        'legend.borderaxespad': 2,
        'legend.fancybox': True,
        'legend.fontsize': 16,
        'legend.framealpha': 0.6,
        'lines.linewidth': 2,
        'lines.markeredgewidth': 3,
        'lines.markersize': 15,
        'xtick.major.pad': 10,
        'xtick.minor.pad': 10,
        'xtick.labelsize': 16,
        'ytick.major.pad': 10,
        'ytick.minor.pad': 10,
        'ytick.labelsize': 16
    }
)

class Colours(object):
    """Colours iterable"""
    
    """Index of current colour"""
    current_index = None
    
    """Index of last colour"""
    end_index = None
    
    # plot colour scheme
    # http://www.randalolson.com/2014/06/28/how-to-make-beautiful-data-visualizations-in-python-with-matplotlib/
    colours = [(31, 119, 180), (174, 199, 232), (255, 127, 14), (255, 187, 120),    
                (44, 160, 44), (152, 223, 138), (214, 39, 40), (255, 152, 150),    
                (148, 103, 189), (197, 176, 213), (140, 86, 75), (196, 156, 148),    
                (227, 119, 194), (247, 182, 210), (127, 127, 127), (199, 199, 199),    
                (188, 189, 34), (219, 219, 141), (23, 190, 207), (158, 218, 229)]
    
    def __init__(self):
        self.current_index = 0
        self.end_index = len(self.colours)
        
        # scale to range [0, 1] for matplotlib
        for i in range(len(self.colours)):
            r, g, b = self.colours[i]
            self.colours[i] = (r / 255, g / 255, b / 255)
    
    def __iter__(self):
        return self
    
    def next(self):
        if self.current_index > self.end_index:
            raise StopIteration
        else:
            self.current_index += 1
            
            return self.colours[self.current_index - 1]
    
    def current(self):
        """Returns current colour"""
        
        return self.colours[self.current_index]
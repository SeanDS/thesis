# Sean Leavey's Thesis

Modified version of [Glasgow Thesis Template](https://github.com/sdstrowes/Glasgow-Thesis-Template) by Stephen D. Strowes, with some custom Make, BASH and Python hacks from me.

Follows the University of Glasgow style guide, as outlined in [this document](http://www.gla.ac.uk/services/library/enlighten/theses/thesispreparationguidelines.pdf).

### Dependencies ###
Incomplete list:

 * pdflatex
 * circuitikz
 * python
 * python-numpy
 * python-scipy
 * python-matplotlib
 * python-mpltoolkits.basemap
 * gnumake
 * inkscape

### Instructions ###
Add `/scripts` to your `PYTHONPATH`. In BASH:

```bash
export PYTHONPATH=${PYTHONPATH}:/path/to/repo/scripts
```

Run `make`:

```bash
make
```

Done!

(C) Sean Leavey, 2016
% =============================================================================
% Glasgow University thesis format, following as closely as possible:
% http://www.gla.ac.uk/services/library/enlighten/theses/thesispreparationguidelines.pdf
%
% Originally by Stephen D. Strowes, modified by Sean Leavey
% =============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sean-thesis}
\PassOptionsToPackage{bindingoffset=0mm, left=17mm, right=17mm, top=17mm, bottom=17mm, includehead, includefoot}{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions
\LoadClass[10pt,a5paper,openright]{book}

% A5 page size
\usepackage[paperheight=210mm, paperwidth=148mm]{geometry}

\usepackage{ifpdf}
\ifpdf
\usepackage[pdftex]{graphicx}
\else
\usepackage{graphicx}
\fi

% Fonts
\usepackage{stix}
\usepackage{sectsty}
\usepackage{libertine}
\allsectionsfont{\sffamily}

% Set paragraph layout.
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}

% Set line spacing to one.
\usepackage{setspace}
\singlespacing

% Page margins. The University requires A4 (210 × 297 mm), with the following
% spacings:
% Top margin: 1.8cm
% Bottom margin: 1.8cm
% Left margin: 1.5cm
% Right margin: 1.5cm
% + 2.5cm gutter, making 4.0cm on the binding edge.

% This page described the various parameters that can be set here:
%  http://amath.colorado.edu/documentation/LaTeX/reference/layout.html

% 148mm (A5 width) minus the left and right padding
\textwidth 114mm

% 210mm (A5 height) minus the top and bottom paddings, minus the header space
\textheight 166mm

% Preface environment to vertically centre the text
% from https://tex.stackexchange.com/questions/154733/
\newenvironment{preface}{\clearpage\setlength{\topskip}{0pt}%
  \newgeometry{vmargin=0cm,ignoreheadfoot}%
  \thispagestyle{empty}%
  \vspace*{\fill}\nointerlineskip\small}%
  {\vspace*{\fill}\clearpage\restoregeometry}

% Specify section number depth to allow subsubsection headings to be
% numbered (so that they can be cross-referenced properly).
\setcounter{secnumdepth}{3}

% Stop figures and other floats getting their own page unless they take up most of the page
\renewcommand{\floatpagefraction}{1}
\renewcommand{\topfraction}{1}

% Title page layout
\renewcommand\maketitle{
  \begin{titlepage}%
    % This will apply only in here. It's the only way I know to affect
    % the positioning of the title without reverting to minipages.
    \let\footnotesize\small
    \let\footnoterule\relax
    \let\footnote \thanks
    \begin{center}
    {
       \Huge\textsc{
        \@title
      }\par
    }
    \vskip 6em%
    {
      \textsc{\LARGE
        \@author
      }
    }
    \vskip 1em%
    {
      \textsc{MSci}
    }
    \vskip 3em%
    {
      \textsc{
        Submitted in fulfilment of the requirements for the degree of
      }
    }
    \vskip 1em%
    {
      \emph{Doctor of Philosophy}
    }
    \vskip 3em%
    {
      \textsc{\large
        School of Physics and Astronomy
      }

      \textsc{\large
        College of Science and Engineering
      }
      
      \textsc{\Large
        University of Glasgow
      }
    }
    \vskip 5em%
%    \includegraphics[trim=0.5cm 0.7cm 0.7cm 0.7cm]{graphics/crest_cs}
%    \vskip 8em
%    \vfill
    \textsc{\@date}
  \end{center}
  \end{titlepage}%
  %
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
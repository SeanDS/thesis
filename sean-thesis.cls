% =============================================================================
% Glasgow University thesis format, following as closely as possible:
% http://www.gla.ac.uk/services/library/enlighten/theses/thesispreparationguidelines.pdf
%
% Originally by Stephen D. Strowes, modified by Sean Leavey
% =============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{glasgowthesis}
\PassOptionsToPackage{bindingoffset=2.5cm, left=1.5cm, right=1.5cm, top=1.8cm, bottom=1.8cm, includehead, includefoot}{geometry}
\DeclareOption{nogutter}{
  \PassOptionsToPackage{bindingoffset=0cm, left=2.75cm, right=2.75cm, top=1.8cm, bottom=1.8cm, includehead, includefoot}{geometry}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[12pt,a4paper,openright]{book}

\usepackage{geometry}

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

% Set line spacing to one-and-a-half.
\usepackage{setspace}
\onehalfspacing

% Page margins. The University requires A4 (210 × 297 mm), with the following
% spacings:
% Top margin: 1.8cm
% Bottom margin: 1.8cm
% Left margin: 1.5cm
% Right margin: 1.5cm
% + 2.5cm gutter, making 4.0cm on the binding edge.

% This page described the various parameters that can be set here:
%  http://amath.colorado.edu/documentation/LaTeX/reference/layout.html

% The actual width of the body text must be 15.5cm.
\textwidth 15.5cm

% The default side margin is 1" + whatever is set here. 1" == 2.54cm.
% To meet the 4.0cm of 1.5cm margin + 2.5cm gutter:
% 
% On odd pages, the side margin must be set to 1.46cm. (i.e., the
% default value of 2.54cm + an additional 1.46cm to achieve the 1.5cm
% margin + 2.5cm gutter.)
%\oddsidemargin 1.46cm
% 
% On even pages, the gutter is on the opposing side, to the side
% margin is set to -1.04cm (i.e., the default value of 2.54cm - the
% 1.04cm required to achieve the 1.5cm margin.)
%\evensidemargin -1.04cm


% The default top margin is also 1" (2.54cm), but must be 1.8cm to
% conform to guidelines. Thus, the top margin must be set to 2.54cm -
% 0.74cm to meet the required 1.8cm.
%\topmargin -0.74cm

% With 1.8cm at top and bottom, 26.1cm is left for body text. Instead
% of 26.1cm, I set the text height to (26.1cm - 1.8cm), so the header
% gets 1.8cm and the body text still fits within guidelines.
\textheight 24.3cm

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
\renewcommand{\floatpagefraction}{0.8}

% Title page layout
\renewcommand\maketitle{
  \begin{titlepage}%
    % This will apply only in here. It's the only way I know to affect
    % the positioning of the title without reverting to minipages.
    \topmargin 2.54cm
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
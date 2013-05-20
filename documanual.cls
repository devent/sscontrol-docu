% This file is part of Latexlibs.
% Copyright 2013 Erwin Müller, erwin.mueller@deventm.org.
% This work is licensed under the Creative Commons Attribution 3.0 Unported
% License. To view a copy of this license, visit
% http://creativecommons.org/licenses/by/3.0/ or send a letter to Creative
% Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
\ProvidesClass{documanual}[2013/04/10 Manual Documentation]

%%%
% Usefull package options for scrreprt:
%
% abstract  = on|off
% toc       = flat,graduated,index,nulistof,nobib,noindex,nolistof
%%%

% extends scrreprt class
% Read all the documentclass options; pass them to scrreprt, unless the file
% named "<currentoption>.min" exists, in which case it is loaded
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
    \PassOptionsToClass{\CurrentOption}{scrreprt}}}
\ProcessOptions \relax
\LoadClass{scrreprt}

%
\RequirePackage[utf8]{inputenc}
%
\RequirePackage[paper=a4paper,margin=2.5cm,includeheadfoot,hmargin={5.0cm,2cm},marginparwidth=3.5cm]{geometry}
%
\RequirePackage[backend=bibtex8,citestyle=numeric]{biblatex}
% Font
\RequirePackage{bookman}
\RequirePackage[T1]{fontenc}
% footnotes
\RequirePackage[perpage,symbol*]{footmisc}
% multi-cols environment
\RequirePackage{multicol}
%
\RequirePackage{mparhack}
% header and footer
\RequirePackage{scrheadings}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
% for the new list environments
%   * asparaenum
%   * inparaenum
%   * compactenum
%   * asparaitem
%   * inparaitem
%   * compactitem
%   * asparadesc
%   * inparadesc
%   * compactdesc
\RequirePackage{paralist}

\RequirePackage{subcaption}
\RequirePackage{amssymb,amsmath}
\RequirePackage[nodisplayskipstretch]{setspace}
\setstretch{1.0}
\RequirePackage{colorhyper}

% figure to use in multicols
\newenvironment{Figure}
{\def\@captype{figure}}
{}
% table to use in multicols
\newenvironment{Table}
{\def\@captype{table}}
{}

%%%
% set new lengths for floats
% Note: floatpagefraction must be less than topfraction
\setlength{\@fptop}{5pt}
% max fraction of floats at top
\renewcommand{\topfraction}{0.9}   
% max fraction of floats at bottom
\renewcommand{\bottomfraction}{0.8}
% parameters for text pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4} % 2 may work better
\setcounter{dbltopnumber}{2} % for 2-column pages
\renewcommand{\dbltopfraction}{0.9} % fit big float above 2-col. text
\renewcommand{\textfraction}{0.07}  % allow minimal text w. figs
% parameters for float pages (not text pages):
\renewcommand{\floatpagefraction}{0.7}  % require fuller float pages
% require fuller float pages
\renewcommand{\dblfloatpagefraction}{0.7}


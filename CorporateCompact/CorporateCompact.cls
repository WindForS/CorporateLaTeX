% -------------------------------------------------------------
% Identification Part
% -------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CorporateCompact}
\typeout{ }
\typeout{CorporateCompact.cls -- v1.0, Last Updated May 23, 2017}
\typeout{Formats articles using the common corporate style and reduced spacing}
\typeout{ }

% -------------------------------------------------------------
% Check and Process Options
% -------------------------------------------------------------
\RequirePackage{xifthen}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{12pt}
\ProcessOptions\relax

% -------------------------------------------------------------
% Load Underlying Class File
% -------------------------------------------------------------
\LoadClass{article}

% -------------------------------------------------------------
% Footnote Formatting
% -------------------------------------------------------------
\renewcommand*{\thefootnote}{\fnsymbol{footnote}}

% -------------------------------------------------------------
% Package Loading
% -------------------------------------------------------------
% GEOMETRY: set page size
\RequirePackage[head=0.125in,%
	top=0.9in,%
	bottom=1in,%
	inner=1in,%
	outer=1in,%
	headheight=26pt,%
	includeheadfoot]{geometry}

% -------------------------------------------------------------
% Bibliography
% -------------------------------------------------------------
% Use numeric style for the bibliography
\RequirePackage[babel]{csquotes}
\RequirePackage[style=numeric,%
			backend=bibtex,%
			natbib=true,%
			bibencoding=inputenc,%
			sorting=nyt,%
			url = false,%
			doi=true,%
			isbn = false,%
			maxbibnames = 10,%
			maxcitenames = 3]{biblatex}

% suppress page numbers in the bibliography
\AtEveryBibitem{%
   \clearfield{pages}%
}
% reduce the font size in the bibliography
\renewcommand*{\bibfont}{\small}

% -------------------------------------------------------------
% Load Resource File
% -------------------------------------------------------------
\RequirePackage{../resources/CorporateResources}



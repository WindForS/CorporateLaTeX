% -------------------------------------------------------------
% Identification Part
% -------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CorporateReport}
\typeout{ }
\typeout{CorporateReport.cls -- v1.0, Last Updated March 16, 2017}
\typeout{Formats reports using the common corporate style}
\typeout{ }

% -------------------------------------------------------------
% Check and Process Options
% -------------------------------------------------------------
\RequirePackage{xifthen}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{11pt}

% -------------------------------------------------------------
% Create Booleans for this Class
% -------------------------------------------------------------
% Mark as draft

% print links in black
\newboolean{IsBlackLinks}
\setboolean{IsBlackLinks}{false}
\DeclareOption{blacklinks}{
	\setboolean{IsBlackLinks}{true}
	\typeout{Using black links}
	}

% draft?
\newboolean{IsDraft}
\setboolean{IsDraft}{false}
\DeclareOption{draft}{
	\setboolean{IsDraft}{true}
	\typeout{Formatting as draft}
	}

% tagged?
\newboolean{IsTagged}
\setboolean{IsTagged}{false}
\DeclareOption{tagged}{
	\setboolean{IsTagged}{true}
	\typeout{PDF will be tagged}
	}
	
% -------------------------------------------------------------
% Process Options
% -------------------------------------------------------------
\ProcessOptions\relax

% -------------------------------------------------------------
% Load Underlying Class File
% -------------------------------------------------------------
\LoadClassWithOptions{report}

% -------------------------------------------------------------
% Package Loading
% -------------------------------------------------------------
% GEOMETRY: set page size
\RequirePackage[head=10mm,%
			top=10mm,%
			bottom=20mm,%
			inner=20mm,%
			outer=20mm,
			headheight=15mm,%
			includeheadfoot]{geometry}

% For formatting the bibliography. See guidance 
\RequirePackage[babel]{csquotes}
\RequirePackage[style=chicago-authordate,strict,backend=bibtex,%
natbib=true,bibencoding=inputenc,sorting=nyt,doi=true, maxbibnames = 10, maxcitenames = 3 ]{biblatex}

% -------------------------------------------------------------
% Load Resource File
% -------------------------------------------------------------
\RequirePackage{../resources/CorporateResources}

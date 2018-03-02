% -------------------------------------------------------------
% Identification Part
% -------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CorporateArticle}
\typeout{ }
\typeout{CorporateArticle.cls -- v1.0, Last Updated May 23, 2017}
\typeout{Formats articles using the common corporate style}
\typeout{ }

% -------------------------------------------------------------
% Check and Process Options
% -------------------------------------------------------------
\RequirePackage{xifthen}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{11pt}
	
% -------------------------------------------------------------
% Process Options
% -------------------------------------------------------------
\ProcessOptions\relax

% -------------------------------------------------------------
% Load Underlying Class File
% -------------------------------------------------------------
\LoadClassWithOptions{article}

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

% -------------------------------------------------------------
% Bibliography
% -------------------------------------------------------------

% Use author-date style for the bibliography
\RequirePackage[babel]{csquotes}
\RequirePackage[style=chicago-authordate,%
			strict,%
			backend=bibtex,%
			natbib=true,%
			bibencoding=inputenc,%
			sorting=nyt,%
			doi=true,%
			maxbibnames = 10,%
			maxcitenames = 3 ]{biblatex}

% -------------------------------------------------------------
% Load Resource File
% -------------------------------------------------------------
\RequirePackage{../resources/CorporateResources}

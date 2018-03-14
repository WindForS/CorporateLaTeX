% -------------------------------------------------------------
% Identification Part
% -------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CorporateArticle}
\typeout{ }
\typeout{CorporateArticle.cls -- v1.1, Last Updated March 14, 2018}
\typeout{Formats articles using a common corporate style}
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
% Load Resource File
% -------------------------------------------------------------
\RequirePackage{../resources/CorporateResources}

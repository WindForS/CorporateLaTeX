% -------------------------------------------------------------
% Identification Part
% -------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CorporateReport}
\typeout{ }
\typeout{CorporateReport.cls -- v1.1, Last Updated March 14, 2018}
\typeout{Formats reports using a common corporate style}
\typeout{ }

% -------------------------------------------------------------
% Check and Process Options
% -------------------------------------------------------------
\RequirePackage{xifthen}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{11pt}

% -------------------------------------------------------------
% Process Options
% -------------------------------------------------------------
\ProcessOptions\relax

% -------------------------------------------------------------
% Load Underlying Class File
% -------------------------------------------------------------
\LoadClassWithOptions{report}

% -------------------------------------------------------------
% Load Resource File
% -------------------------------------------------------------
\RequirePackage{../resources/CorporateResources}

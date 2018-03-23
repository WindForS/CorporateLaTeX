# Introduction
This is the repository for LaTeX class files and template documents that can be used to produce articles, reports, and presentations that conform to a corporate style guide. 

The following files are the important ones:
* LaTeX class file: each document style (article, report, one-pager) has it's own directory and associated class file (.cls) which defines the style
* Template .tex file: every directory includes a demonstration of the class file in use.
* Example .pdf file: every directory includes a PDF produced from the demonstration .tex file.

N.B. This repository is based on a fork from the [NREL LaTeX_editing repo](https://github.com/NREL/latex_editing) in April 2017.

# Installing and using the latex class file
The `*.cls`  files should be installed either in your local latex tree or in the same directory as your .tex source files. 

Call the class using something like `\documentclass[a4paper,logo,twocolumn]{CorporateReport}` in your preamble. Options for the class are discussed in the `CorporateReport.pdf` and `CorporateArticle.pdf` documents.

# Documentation
Documentation is provided in an example `.pdf` file which can be found in each directory. The `.tex` source used to create that file may be useful as a template.

# Troubleshooting
## Can't find the CorporateResources class file
You may need to move the `CorporateResources.cls` file from `/resources/` to the same directory as the `CorporateReport.cls` and `CorporateArticle.cls` files. Then, you will need to change the class to load `CorporateResources.cls` from the right place:

    % -------------------------------------------------------------
    % Load Resource File
    % -------------------------------------------------------------
    \RequirePackage{../resources/CorporateResources}
    
might then need to become

    % -------------------------------------------------------------
    % Load Resource File
    % -------------------------------------------------------------
    \RequirePackage{CorporateResources}

# Reporting issues and errors
Please use the [issue-tracker](../../issues) to report issues.

# Wiki
Please use [the wiki](../../wiki) as you feel fit. Useful examples may be rolled in to the template files over time.

# Recent changes
4.10.17 Forked from the NREL LaTex_Editing repo

# Introduction
This is the repository for the _WindForS_ LaTeX package. The _WindForS_ package formats documents so that they follow the WindForS corporate identity.

The _WindForS_ package is implemented using a style file, in this case `WindForS.sty`.

This repository also contains examples of _article_ and _report_ documents that use the _WindForS_ package.

# Contents of this repository
You'll find the following files in this repository:
* Style file: `WindForS.sty` implements the _WindForS_ package, which can be called from a .tex file.
* Example files: contains examples of how to use the _WindForS_ package with the _article_ and _book_ classes.

N.B. This repository is based on a fork from the [NREL LaTeX_editing repo](https://github.com/NREL/latex_editing) in April 2017.

# How to use the style file
The style file should be installed either in your local latex tree or in the same directory as your .tex source files.

Call the class as normal using something like `\documentclass[a4paper,twocolumn]{article}` in your .tex file's preamble.

Then call the package using `\usepackage[logo]{WindForS}`. More details about the options you can use are provided in the documents.

# Documentation
Documentation is provided in PDF files in the `/examples` directory. The PDFs all have the same content. Source .tex files are provided that could be used as templates.

# Troubleshooting
## Can't find the _WindForS_ package
This happens because the path to the style file is wrong. So, you might get this if you move the .tex examples but don't change the preamble.

Ideally you should install `WindForS.sty` in your local latex tree, or put it in the same directory as your source .tex files. It will be found automatically in these locations.

Wherever you put the .sty file, you may need to change the path in the preamble to point to the directory where the style file is. If its in your local tree or the same directory, you need to change:

    \usepackage{../../WindForS}

into...

    \usepackage{WindForS}

# Reporting issues and errors
Please use the [issue-tracker](../../issues) to report issues.

# Wiki
Please use [the wiki](../../wiki) as you feel fit. Useful examples may be rolled in to the template files over time.

# Recent changes
23 March 18: Switched to package architecture
4 October 17: Forked from the NREL LaTex_Editing repo

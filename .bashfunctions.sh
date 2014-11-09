#/bin/bash
function hallo(){
	echo 'Hello World'
}

function halloCustom(){
	echo $1
}
function resizeToLetter(){
	gs -sDEVICE=pdfwrite -sPAPERSIZE=letter -dFIXEDMEDIA -dPDFFitPage -dCompatibilityLevel=1.4 -o $2 $1
}

function resizeToA4(){
	gs -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dFIXEDMEDIA -dPDFFitPage -dCompatibilityLevel=1.4 -o $2 $1
}

function epsGNU(){
	gnuplot $1.gpi;
	pdflatex $1.tex;
}

function pstoolFig(){
	touch tempMkFig.tex;
	echo "\documentclass[9pt]{article}" >> tempMkFig.tex;
	echo "\usepackage[crop=pdfcrop,pdfcrop-options={--pdftexcmd pdflatex}]{pstool}" >> tempMkFig.tex;
	echo "\renewcommand*{\familydefault}{\sfdefault}" >> tempMkFIg.tex
	echo "\pagestyle{empty}" >> tempMkFig.tex;
	echo "\begin{document}" >> tempMkFig.tex;
	echo "\psfragfig[width=\textwidth]{$1}" >> tempMkFig.tex;
	echo "\end{document}" >> tempMkFig.tex;
	pdflatex -shell-escape tempMkFig.tex;
	rm -rf tempMk* *pstool.aux;
}

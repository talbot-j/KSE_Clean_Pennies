all: pass1 pass2
	@echo "Done!"

pass1:
	pdflatex -interaction=nonstopmode report

pass2: pass1
	pdflatex -interaction=nonstopmode report

clean:
	@rm -f report.pdf *.aux *.dvi *.log *.out *.bak *.toc *.bbl
	@echo "Clean done.";

MAIN=texture-presentation

make: clean build

build:
	@echo "compiling document"
	@pdflatex ${MAIN}.tex >/dev/null
	@echo "creating bibtex"
	@bibtex ${MAIN}.aux
	@echo "compiling again"
	@pdflatex ${MAIN}.tex >/dev/null
	@echo "done"

clean:
	@rm -f *.log ${MAIN}.out *.snm *.toc *.aux *.nav

FILE=resume

all: $(FILE).pdf
.PHONY: clean

clean:
	rm -f ${FILE}.pdf
	rm -rf *.log
	rm -rf *.out
	rm -rf *.aux

$(FILE).pdf: *.tex
	pdflatex -shell-escape $(FILE).tex

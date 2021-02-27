PRE = cv

all: $(PRE).pdf $(PRE).ps

$(PRE).pdf: $(PRE).tex
	pdflatex $(PRE).tex

$(PRE).ps: $(PRE).dvi
	dvips -o $(PRE).ps $(PRE)

$(PRE).dvi: $(PRE).tex
	latex $(PRE); latex $(PRE)
clean:
	rm -f *.log *.aux  *.pdf

fresh: clean
	rm -f *.ps *.pdf *.dvi


FLAGS = -pdfdvi -bibtex
LATEXMK = latexmk
OPEN = open
EBB = extractbb

MAIN = sample-mthesis.tex
BIBTEX = bibtex/referencies.bib
MAINBASENAME  = $(basename $(MAIN))
TEXS = $(MAIN) $(BIBTEX)

IMG = resource

main: $(TEXS) $(IMG)/*
	find $(IMG) -name "*.jpg" | xargs $(EBB)
	find $(IMG) -name "*.png" | xargs $(EBB)
	find $(IMG) -name "*.pdf" | xargs $(EBB)
	$(LATEXMK) $(FLAGS) $(MAIN)
	$(OPEN) $(MAINBASENAME).pdf

$(IMG):

$(BIBTEX):

clean: 
	rm $(MAINBASENAME).log 
	rm $(MAINBASENAME).bbl 
	rm $(MAINBASENAME).blg 
	rm *.aux 
	rm $(MAINBASENAME).dvi 
	rm $(MAINBASENAME).fdb_latexmk
	rm $(MAINBASENAME).lof
	rm $(MAINBASENAME).lot
	rm $(MAINBASENAME).out
	rm $(MAINBASENAME).toc
	rm $(MAINBASENAME).pdf


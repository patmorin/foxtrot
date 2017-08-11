
ipefigs=$(wildcard figs/*.ipe)

foxtrot.pdf : figs foxtrot.tex foxtrot.bib $(ipefigs)
	latexmk -pdf foxtrot.tex

figs: $(ipefigs)
	make -C figs

clean :
	rm -f foxtrot.pdf figs/*.pdf

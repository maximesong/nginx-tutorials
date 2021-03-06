ver=$(shell date +'%Y.%m.%d')

.PHONY: all zhcn enuk clean

all: zhcn enuk

zhcn:
	$(MAKE) -f ebooks.mk

enuk:
	$(MAKE) -f ebooks.mk lang=$@ lang2=en src=en-uk title="agentzh's Nginx Tutorials (ver $(ver))"

clean:
	rm -rf html/ wiki/ index*.html *.mobi *.epub *.pdf


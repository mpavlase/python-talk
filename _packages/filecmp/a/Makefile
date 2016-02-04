
MARKDOWN=\
    talk.md

ODPDOWN?=odpdown

.PHONY: default
default: $(patsubst %.md,%.pdf,$(MARKDOWN))

.PHONY: clean
clean:
	rm $(patsubst %.md,%.pdf,$(MARKDOWN)) $(patsubst %.md,%.odp,$(MARKDOWN))

%.odps : %.md discreet-dark.odp Makefile
	$(ODPDOWN) -s default --break-master=Discreet_25_20Dark1 --content-master=Discreet_25_20Dark $< discreet-dark.odp $@

%.odp : %.md template.odp Makefile
	$(ODPDOWN) -s friendly -p 3 --break-master=chapter --content-master=content $< template.odp $@

%.pdf : %.odp
	soffice --headless --convert-to pdf:impress_pdf_Export $<

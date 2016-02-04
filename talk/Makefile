
MARKDOWN=\
    talk.md

ODPDOWN?=odpdown

.PHONY: default
default: $(patsubst %.md,%.pdf,$(MARKDOWN))

%.odp : %.md template.odp Makefile
	$(ODPDOWN) -s friendly -p 3 --break-master=chapter --content-master=content $< template.odp $@

%.pdf : %.odp
	soffice --headless --convert-to pdf:impress_pdf_Export $<

MD=$(wildcard *.md)
PDF=$(patsubst %.md, %.pdf, $(MD))

all: $(PDF)

%.pdf: %.md
	pandoc -V geometry:margin=1in $(patsubst %.pdf, %.md, $@) -o $@

clean:
	rm -rf *.pdf

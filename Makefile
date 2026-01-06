DATE=$(shell date +%F)

all: index.html

clean:
	rm -f index.html

index.html: src/index.md demo/template.html Makefile
	pandoc --toc -s --css src/reset.css --css src/index.css -Vdate=$(DATE) -i $< -o $@ --template=demo/template.html

.PHONY: all clean

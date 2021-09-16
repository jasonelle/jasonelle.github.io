PHONY: build

b build:
	asciidoctor README.adoc
	mv README.html docs/index.html

.PHONY: docs

docs d:
	mkdir -p docs/docs
	make home
	make vindex
	make v3

home:
	asciidoctor content/index.adoc
	mv content/index.html docs/index.html

vindex:
	asciidoctor content/versions.adoc
	mv content/versions.html docs/docs/index.html

v3:
	mkdir -p docs/docs/3.0/ios
	mkdir -p docs/docs/3.0/ios/assets
	asciidoctor content/ver/3.0/ios/index.adoc
	mv content/ver/3.0/ios/index.html docs/docs/3.0/ios/index.html

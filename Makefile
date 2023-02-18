.PHONY: docs server

docs d:
	@cd ../jasonelle && make docs
	@rm -rf docs/docs
	@cp -r ../jasonelle/docs/book docs/
	@mv docs/book docs/docs
# Copy the latest version to a version directory
	@cd docs/docs && cat ../../../jasonelle/sources/xcode/.version | xargs cp -r ../../../jasonelle/docs/book

server s:
	@cd docs && python3 -m http.server

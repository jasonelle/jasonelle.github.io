.PHONY: docs

docs d:
	@cd ../jasonelle && make docs
	@rm -rf docs/docs
	@cp -r ../jasonelle/docs/book docs/
	@mv docs/book docs/docs

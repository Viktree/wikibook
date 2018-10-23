
deploy:
	rm -rf site
	mkdir private
	cp -r docs/private .
	rm -rf docs/private

	mkdocs gh-deploy

	cp -r private docs
	rm -rf private
	rm -rf site
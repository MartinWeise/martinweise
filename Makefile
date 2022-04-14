phony:

all:

build:
	mkdocs build

install: build
	git add .
	git commit -S -m "new version" || true
	git push || true
	cp -r ./site/* ../martinweise.github.io/
	cd ../martinweise.github.io/ && git add . && git commit -S -m "new release" && git push -u origin master
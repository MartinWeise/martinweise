phony:

all:

build:
	mkdocs build

install: build
	cp -r ./site/* ../martinweise.github.io/
	cd ../martinweise.github.io/ && git add . && git commit -S -m "new version" && git push
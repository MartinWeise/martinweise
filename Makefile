phony:

all:

build:
	mkdocs build

install: build
	git add .
	git commit -S -m "new version"
	git push
	cp -r ./site/* ../martinweise.github.io/
	cd ../martinweise.github.io/ && git pull origin master && git add . && git commit -S -m "new release" && git push -u origin master
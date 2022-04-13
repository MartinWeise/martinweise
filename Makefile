phony:

all:

build:
	mkdocs build

install:
	cp -r ./site/* ../martinweise.github.io/
	cd ../martinweise.github.io/
	git add .
	git commit -S -m "new release"
	git push -u origin master
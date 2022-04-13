phony:

all:

build:
	mkdocs build

deploy:
	sudo cp -r ./site/* /usr/share/nginx/html/

all:
	read -p "enter commit message: " msg && make "updated: $$msg"

%:
	git add .
	git commit -am "$@"
	git push

push pull:
	git branch
	git $@

server:
	python -m SimpleHTTPServer

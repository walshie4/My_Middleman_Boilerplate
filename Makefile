.PHONY: pull, push, update, deploy, build, clean, run, test
pull:
	git pull origin master
push:
	git push origin master
update: pull push
clean:
	rm -rf build/
build: clean
	bundle exec middleman build
deploy: build
	bundle exec middleman deploy
run:
	bundle exec middleman
test: run

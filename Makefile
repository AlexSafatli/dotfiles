.PHONY: Linux Darwin Sublime all
OS := $(shell uname)

all: $(OS) Sublime
	cp shell/.[a-zA-Z0-9]* ~

Darwin:
	# Mac OS X
	osx/defaults.sh
	cp osx/.[a-zA-Z0-9]* ~
	$(eval SUBLIME = ~/Library/Application\ Support/Sublime\ Text\ 2/Packages)

Linux:
	# Linux
	cp linux/.[a-zA-Z0-9]* ~
	$(eval SUBLIME = ~/.config/sublime-text-2/Packages)

Sublime:
	cp -r sublime/* $(SUBLIME)
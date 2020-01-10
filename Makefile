.PHONY: Linux Darwin Sublime assets all

ifeq ($(OS),Windows_NT)
	onOS := Windows
else
	onOS := $(shell uname)
endif

all: $(onOS) Sublime assets
	cp -R shell/.[a-zA-Z0-9]* ~
	cp vendor/.[a-zA-Z0-9]* ~

Darwin:
	# Mac OS X
	osx/defaults.sh
	cp osx/.[a-zA-Z0-9]* ~
	osx/homebrew.sh
	osx/zsh.sh
	$(eval SUBLIME_PREFS = ~/Library/Application\ Support/Sublime\ Text\ 3/Packages)
	-ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

Linux:
	# Linux
	-cp linux/.[a-zA-Z0-9]* ~
	$(eval SUBLIME_PREFS = ~/.config/sublime-text-2/Packages)

Windows:
	# Windows XP, 2000, 7, Vista, 10, ...
	# $(eval SUBLIME_PREFS = ...)

Sublime:
	-cp -r sublime/User $(SUBLIME_PREFS)


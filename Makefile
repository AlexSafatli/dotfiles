.PHONY: Linux Darwin Sublime all
OS := $(shell uname)

all: $(OS) Sublime
	cp shell/.[a-zA-Z0-9]* ~
	cp vendor/.[a-zA-Z0-9]* ~

Darwin:
	# Mac OS X
	osx/defaults.sh
	cp osx/.[a-zA-Z0-9]* ~
	$(eval SUBLIME_PREFS = ~/Library/Application\ Support/Sublime\ Text\ 2/Packages)
	-ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

Linux:
	# Linux
	cp linux/.[a-zA-Z0-9]* ~
	$(eval SUBLIME_PREFS = ~/.config/sublime-text-2/Packages)

Sublime:
	cp -r sublime/User $(SUBLIME_PREFS)
.PHONY: Linux Darwin Sublime assets all
OS := $(shell uname)

all: $(OS) Sublime assets
	cp shell/.[a-zA-Z0-9]* ~
	cp vendor/.[a-zA-Z0-9]* ~

Darwin:
	# Mac OS X
	osx/defaults.sh
	cp osx/.[a-zA-Z0-9]* ~
	$(eval SUBLIME_PREFS = ~/Library/Application\ Support/Sublime\ Text\ 3/Packages)
	-ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

Linux:
	# Linux
	-cp linux/.[a-zA-Z0-9]* ~
	$(eval SUBLIME_PREFS = ~/.config/sublime-text-2/Packages)

Sublime:
	-cp -r sublime/User $(SUBLIME_PREFS)	

assets:
	-mkdir ~/.commit-messages/
	cp assets/random-commit-msg.py /usr/local/bin/random-commit
	cp assets/commit-messages/* ~/.commit-messages/

.PHONY: Linux Darwin all
OS := $(shell uname)

all: $(OS)
	cp shell/.[a-zA-Z0-9]* ~

Darwin:
	# Mac OS X
	osx/defaults.sh
	cp osx/.[a-zA-Z0-9]* ~

Linux:
	# Linux
	cp linux/.[a-zA-Z0-9]* ~
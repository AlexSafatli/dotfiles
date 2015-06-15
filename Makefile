.PHONY: copy all scripts
OS := $(shell uname)

all: copy scripts

scripts:
	ifeq $(OS) Darwin # Mac OS X
		osx/defaults.sh
	endif

copy:
	ifeq $(OS) Darwin # Mac OS X
		cp osx/.* ~
	else # Other Unix System
		cp linux/.* ~
	endif
	cp shell/.* ~
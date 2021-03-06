# dotfiles

Personal Preferences and Settings for a Windows, Mac OS X, or UNIX Environment

## Requirements

Before using these dotfiles there are a few things you'll need to install 
manually depending on what operating system you are running:

- Mac OS X needs git and Apple’s command-line developer tools.
- You will probably need to download Fira Code to see that font in JetBrains.

## Installation

These dotfiles take into consideration what operation system you are running on 
automatically and tries to download dependencies. Apart from any exceptions 
above, all that's necessary is running

`make`

in this directory in a BASH terminal.

### Package Control

The Sublime Text packages will install themselves the next time you launch 
Sublime Text, but you need to install 
[Package Control](https://packagecontrol.io) first:

1. Press <kbd>SHIFT</kbd> <kbd>CMD</kbd> <kbd>P</kbd> to bring up the command palette
2. Type `install`
3. Select the option to install Package Control

## Planned Additions

- Windows machine setup automation using [Boxstarter](https://boxstarter.org/). See related reading below.

## Related Reading and Projects

- https://edaoud.com/blog/2020/02/01/automate-your-computer-setup-dotfiles/
- https://github.com/mattbrictson/dotfiles
- https://dev.to/kasuken/from-a-windows-10-clean-installation-to-a-dev-environment-in-30-minutes-with-boxstarter-41n2

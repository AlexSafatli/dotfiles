# Set defaults for OS X (Mountain Lion +).
# 
# Copied from: 
#   https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
#
# Run ./defaults.sh (once) to set defaults.

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder (in Finder).
chflags nohidden ~/Library

# Show different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
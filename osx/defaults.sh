# Set defaults for OS X (Mountain Lion +).
# 
# Copied from: 
#   https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
#   https://github.com/moul/dotfiles/blob/master/.osx-prefs
#
# Run ./defaults.sh (once) to set defaults.

# Finder

## Use current directory for default search scope.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## Show path bar.
defaults write com.apple.finder ShowPathbar -bool true

## Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

## Show the ~/Library folder (in Finder).
chflags nohidden ~/Library

## Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true

## Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

## Show different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# OS Improvements

## Disable disk image verification.
defaults write com.apple.frameworks.diskimages skip-verify -bool true &&
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true &&
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Animations

## Fast dock hide, display animation
defaults write com.apple.dock autohide-time-modifier -float 0.2

## Remove auto-hiding dock delay
defaults write com.apple.Dock autohide-delay -float 0

# Disks

## Show, mount hidden partitions with Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled 1

# Misc

## Mouse acceleration disable.
defaults write .GlobalPreferences com.apple.mouse.scaling -1

## Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

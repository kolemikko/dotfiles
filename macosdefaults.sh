# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "/Users/mikko/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

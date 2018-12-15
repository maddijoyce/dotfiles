echo "Setting Up iTerm..."

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$dotfiles_dir/applications/iterm"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

defaults write com.googlecode.iterm2 PromptOnQuit -bool false

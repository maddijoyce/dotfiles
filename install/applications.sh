#!/bin/bash

apps=(
  android-studio
  github
  google-chrome
  iterm2
  sequel-pro
  slack
  spectacle
  sublime-text
  the-unarchiver
  viscosity
  visual-studio-code
  vlc
  whatsapp
)

echo "Installing Applications..."

brew cask install "${apps[@]}"

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv

$dotfiles_dir/applications/code/setup.sh
$dotfiles_dir/applications/iterm/setup.sh
$dotfiles_dir/applications/sublime/setup.sh

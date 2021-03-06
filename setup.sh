#!/bin/bash

expected_dir="$HOME/Developer/dotfiles"
export dotfiles_dir=$(pwd)
export cloud_dir="$HOME/Library/Mobile Documents/com~apple~CloudDocs/SDotfiles"

if [ $dotfiles_dir != $expected_dir ]; then
  echo "Running in $dotfiles_dir not $expected_dir"
  echo "Exiting..."
  exit 1
fi

echo "I Think We're Gonna Need Some Admin..."
sudo -v

echo "Installing Fonts..."
sudo cp $dotfiles_dir/fonts/* "/Library/Fonts/"
echo "Installing Keyboard..."
sudo cp -r "$dotfiles_dir/osx/Programmer Dvorak.bundle" "/Library/Keyboard Layouts/Programmer Dvorak.bundle"

$dotfiles_dir/install/osx.sh

$dotfiles_dir/install/command-line-tools.sh
$dotfiles_dir/install/applications.sh
$dotfiles_dir/install/app-store.sh

$dotfiles_dir/install/zsh.sh

$dotfiles_dir/install/shell.sh

#!/bin/bash

expected_dir="~/Developer/dotfiles"
export dotfiles_dir=$(pwd)

if [ $dotfiles_dir != $expected_dir ]; then
  echo "Running in $dotfiles_dir not $expected_dir"
  echo "Exiting..."
  exit 1
fi

# Install Fonts
echo "Installing Fonts..."
cp "$dotfiles_dir/fonts/*" "~/Library/Fonts/"

$dotfiles_dir/install/shell.sh
$dotfiles_dir/install/osx.sh

$dotfiles_dir/install/command-line-tools.sh
$dotfiles_dir/install/applications.sh
$dotfiles_dir/install/app-store.sh

$dotfiles_dir/install/zsh.sh

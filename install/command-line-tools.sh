#!/bin/bash

if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade --all

echo "Installing Command Line Tools..."

apps=(
  coreutils
  moreutils
  findutils
  git
  nvm
  wget
  yarn
  zsh
  mas
  direnv
)

brew install "${apps[@]}"

brew cleanup

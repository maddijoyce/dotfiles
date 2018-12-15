#!/bin/bash

shell_files=(
  ackrc
  curlrc

  shell_aliases
  shell_config
  shell_exports
  shell_functions
  zshrc
)

git_files=(
  gitattributes
  gitconfig
  gitignore
)

echo "Linking Shell Files..."

for i in ${shell_files[@]}; do
  sourceFile="$dotfiles_dir/shell/$i"
  targetFile="$HOME/.$i"

  if [ ! -e "$targetFile" ]; then
    echo "- Linking $i"
    ln -fs $sourceFile $targetFile
  fi
done

echo "Linking Git Files..."

for i in ${git_files[@]}; do
  sourceFile="$dotfiles_dir/git/$i"
  targetFile="$HOME/.$i"

  if [ ! -e "$targetFile" ]; then
    echo "- Linking $i"
    ln -fs $sourceFile $targetFile
  fi
done

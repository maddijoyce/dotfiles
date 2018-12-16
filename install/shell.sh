# #!/bin/bash

# shell_files=(
#   ackrc
#   curlrc
#   dircolors

#   shell_aliases
#   shell_config
#   shell_exports
#   shell_functions
#   zshrc
# )

# echo "Linking Shell Files..."

# for i in ${shell_files[@]}; do
#   sourceFile="$dotfiles_dir/shell/$i"
#   targetFile="$HOME/.$i"

#   if [ ! -e "$targetFile" ]; then
#     echo "- Linking $i"
#     ln -fs $sourceFile $targetFile
#   fi
# done

# git_files=(
#   gitattributes
#   gitconfig
#   gitignore
# )

# echo "Linking Git Files..."

# for i in ${git_files[@]}; do
#   sourceFile="$dotfiles_dir/git/$i"
#   targetFile="$HOME/.$i"

#   if [ ! -e "$targetFile" ]; then
#     echo "- Linking $i"
#     ln -fs $sourceFile $targetFile
#   fi
# done

secure_files=(
  aws
  ssh
)

echo "Linking Secure Files..."

for i in ${secure_files[@]}; do
  sourceFile="$cloud_dir/$i"
  targetFile="$HOME/.$i"

  if [ -e "$targetFile" ]; then
    rmdir $targetFile
    mv $targetFile "$targetFile.bkp"
  fi
  echo "- Linking $i"
  ln -fs "$sourceFile" "$targetFile"
done

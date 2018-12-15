if test ! $(which zsh)
then
  echo "Installing ZSH..."
  brew install zsh
fi

if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Set the default shell to zsh if it isn't currently set to zsh
if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
  chsh -s $(which zsh)
fi

ln -s $dotfiles_dir/nick-modified.zsh-theme $HOME/.oh-my-zsh/themes/
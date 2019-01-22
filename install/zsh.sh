if test ! $(which zsh)
then
  echo "Installing ZSH..."
  brew install zsh
fi

if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
  echo "Installing Oh-My-ZSH..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
fi

if [[ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel9k ]]; then
  echo "Installing PowerLevel9K"
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

# Set the default shell to zsh if it isn't currently set to zsh
if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
  chsh -s $(which zsh)
fi


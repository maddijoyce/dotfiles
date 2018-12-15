echo "Setting Up Sublime..."

sublime_preferences="$HOME/Library/Application Support/Sublime Text 3"

mkdir -p "$sublime_preferences/Packages/User"
ln -fs "$dotfiles_dir/applications/sublime/Preferences.sublime-settings" "$sublime_preferences/Packages/User/Preferences.sublime-settings"
ln -fs "$dotfiles_dir/applications/sublime/Package Control.sublime-settings" "$sublime_preferences/Packages/User/Package Control.sublime-settings"

mkdir -p "$sublime_preferences/Installed Packages"
wget "https://packagecontrol.io/Package%20Control.sublime-package" -P"$sublime_preferences/Installed Packages/"

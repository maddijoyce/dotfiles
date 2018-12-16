echo "Setting Up Viscosity..."

viscosity_data="$HOME/Library/Application Support/Viscosity"

ln -fs "$dotfiles_dir/applications/viscosity/com.viscosityvpn.Viscosity.plist" "$HOME/Library/Preferences/com.viscosityvpn.Viscosity.plist"

mkdir -p $viscosity_data
ln -fs "$cloud_dir/OpenVPN" "$viscosity_data/OpenVPN"
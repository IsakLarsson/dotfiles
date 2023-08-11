current_directory=$(pwd)/

echo "Linking configuration files..."

ln -s $current_cirectory/.tmux.conf ~/.tmux.conf
ln -s $current_directory/starship.toml ~/.config/starship.toml
ln -s $current_directory/.zshrc ~/.zshrc
ln -s $current_directory/karabiner.json ~/.config/karabiner/karabiner.json
ln -s $current_directory/assets ~/.config/karabiner/

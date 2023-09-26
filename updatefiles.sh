current_directory=$(pwd)/

echo "Updating configuration files..."

rm -f ~/.config/starship.toml
rm -f ~/.tmux.conf
rm -f ~/.zshrc
rm -rf ~/.config/karabiner/assets/
rm -rf ~/.config/skhd
rm -rf ~/.yabairc

ln -s $current_directory/yabai/.yabairc ~/.yabairc
ln -s $current_directory/skhd ~/.config/
ln -s $current_cirectory/.tmux.conf ~/.tmux.conf
ln -s $current_directory/starship.toml ~/.config/starship.toml
ln -s $current_directory/.zshrc ~/.zshrc
ln -s $current_directory/karabiner.json ~/.config/karabiner/karabiner.json
ln -s $current_directory/assets ~/.config/karabiner/

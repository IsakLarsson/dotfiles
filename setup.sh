echo "Remember to install iterm as well :)"
echo "Setting up your stuff for you :)"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
brew install gh
brew install starship
brew install neovim
brew install tmux
brew install --cask karabiner-elements
brew install bat
brew install fzf
brew install lazygit
$(brew --prefix)/opt/fzf/install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp starship.toml ~/.config/
cp .zshrc ~
cp karabiner.json ~/.config/karabiner/
cp assets ~/.config/karabiner/
cp .tmux.conf ~

echo "All done! remember to run prefix I to install tmux plugins!"

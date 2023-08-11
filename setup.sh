echo "Remember to install iterm as well :)"
echo "*** Setting up your stuff for you :) ***"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "*** Installing stuff ***"

brew install gh
brew install starship
brew install neovim
brew install tmux
brew install --cask karabiner-elements
brew install bat
brew install fzf
brew install lazygit
brew install exa
$(brew --prefix)/opt/fzf/install


echo "*** Configuring Neovim ***"
#NvChad custom setup

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/IsakLarsson/nvchad-custom.git ~/.config/nvchad-custom
rm -rf ~/.config/nvim/lua/custom
ln -s ~/.config/nvchad-custom/custom ~/.config/nvim/lua/

echo "*** Configuring applications ***"

sh updatefiles.sh

echo "All done! remember to run prefix I to install tmux plugins!"

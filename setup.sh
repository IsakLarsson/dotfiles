#!/bin/bash

echo "Remember to install iterm as well :)"
echo "*** Setting up your stuff for you :) ***"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "*** Installing tools ***"

tools=("starship" "neovim" "tmux" "--cask karabiner-elements" "bat" "node" "fzf" "lazygit" "exa" "tmuxinator")
for TOOL in "${tools[@]}"; do
  brew install $TOOL
done

echo "*** Tools installed successfully! ***"
echo "*** Installing TPM.. ***"

$(brew --prefix)/opt/fzf/install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


echo "*** Configuring Neovim ***"

#NvChad custom setup
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone https://github.com/IsakLarsson/nvchad-custom.git ~/.config/nvchad-custom
rm -rf ~/.config/nvim/lua/custom
ln -s ~/.config/nvchad-custom/custom ~/.config/nvim/lua/

# echo "*** Configuring applications ***"
#
# # sh updatefiles.sh
#
# echo "All done! remember to run prefix I to install tmux plugins!"
# echo "Remember to set up your local git email with git config --global user.email YOUR_EMAIL"

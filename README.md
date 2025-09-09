# Dotfiles

My personal dotfiles for Arch Linux, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## 📦 Contents

- **Ghostty** 
- **Zsh**  
- **Tmux**
- **Neovim**  

## 🛠 Setup

Clone the repository into your home directory (or wherever you prefer):

```bash
git clone https://github.com/<IsakLarsson>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
``` 
Make sure you have all the packages installed 
```bash
pacman -S tmux nvim ghostty zsh stow
```

Create symlinks with 
```bash
stow .
```


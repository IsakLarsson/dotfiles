# Dotfiles

My personal dotfiles for Arch Linux, managed with [GNU Stow](https://www.gnu.org/software/stow/).
For my MacOS dotfiles, check out the `macos` branch, however these are not nearly as organized.
## 📦 Contents

- **Ghostty** 
- **Zsh**  
- **Tmux**
- **Neovim**  - Submoduled from my [Neovim-2025 repo](https://github.com/IsakLarsson/nvim-2025)

## 🛠 Setup

Clone the repository into your home directory (or wherever you prefer):

```bash
git clone https://github.com/IsakLarsson/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
``` 
Make sure you have all the packages installed 
```bash
pacman -S tmux nvim ghostty zsh stow eza
```

Create symlinks with 
```bash
stow .
```


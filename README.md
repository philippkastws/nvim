# Nvim Mach 2 On Diet

Neovim configuration focusing on file viewing, slimmed down version of
[Truly the Ultimate Neovim Config Nvim Mach 2](https://github.com/ChristianChiarulli/nvim)
keeping the file navigation and search capabilities (by ranger, fzf and ripgrep).

## Install

- On Mac

  ```
  brew install neovim ranger fzf ripgrep bat
  ```

- Ubuntu

  ```
  sudo apt install neovim ranger fzf ripgrep bat
  ```

- Arch

  ```
  sudo pacman -S neovim ranger fzf ripgrep bat
  ```

## Clone this repo into your config

```
git clone https://github.com/.../nvim.git ~/.config/nvim
```

## List of programs you should install

- ranger
- fzf
- ripgrep
- bat

## Basic

Use the `basic-init.vim` if you don't want to mess with additional fonts: `rm init.vim && mv basic-init.vim init.vim`. 

## Nice fonts

You need a nerd font (and make sure you use them in terminal, e. g. iTerm 2):
```
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```


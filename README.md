# Nvim Mach 2 On Diet

Neovim configuration focusing on quick file viewing, code inspection and editing

Started one day off [Truly the Ultimate Neovim Config Nvim Mach 2](https://github.com/ChristianChiarulli/nvim)

## Install

### Install dependencies

On Mac:
```
brew install neovim ranger fzf ripgrep bat the_silver_searcher lazygit
```

### Clone this config

```
git clone https://github.com/philippkastws/nvim.git ~/.config/nvim
```

### First run

First run will install plugins, needs a restart after that.

## Nice fonts

Best with a nerd font (and make sure you use them in terminal, e. g. iTerm 2):
```
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

Space opens menu with commands.

Most important keybindings:
--
- \<space>: Open menu
- \<space>e: Toggle file manager side panel
- \<space>f: Fuzzy find files
- \<space>F: Like above, but include hidden files
- \<space>g: Fuzzy find in files
- \<space>G: Like above, but include hidden files
- \<space>c: Close buffer
- \<space>w: Jump to next window
- \<space>i: Open git fugitive
- \<space>C: Close window
- \<space>q: Quit
- \<space>o: Open recent files
- \<space>O: Start page
- \<space>n: Clear find highlighting
- \<space>o: Open recent files
- \<space>O: Open start page
- \<space>h: Show command history
- \<space>b: Show open files
- \<space>B: Fuzzy find current buffer
- \<space>s/s: Easy motion, type character and jump
- \<space>j: Any jump, jump to definition or reference of element under cursor
- \:SSave: Save session



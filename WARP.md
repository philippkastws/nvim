# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Overview

This is a personal Neovim configuration ("Nvim Mach 2 On Diet") optimized for quick file viewing, code inspection, and editing. It uses vim-plug as the plugin manager and focuses on a lightweight but feature-rich setup.

## Setup & Dependencies

### Installing Dependencies

```fish
brew install neovim ranger fzf ripgrep bat the_silver_searcher lazygit
```

### First Run

The first run will automatically install plugins via vim-plug. After initial installation, restart Neovim.

### Plugin Management

- **Plugin manager**: vim-plug (auto-installs on first run)
- **Plugin definitions**: `vim-plug/plugins.vim`
- **Plugin configuration**: `vim-plug/plugins-load.lua` (loaded at the end of plugin setup)
- Missing plugins are auto-installed on VimEnter

## Architecture

### Configuration Structure

```
~/.config/nvim/
├── init.vim              # Main entry point, loads all other configs
├── lua/
│   ├── config.lua        # Core Lua config (mouse, case sensitivity, etc.)
│   └── config/           # Additional Lua configs
├── vim-plug/
│   ├── plugins.vim       # Plugin declarations and inline Lua configs
│   └── plugins-load.lua  # Plugin loading sequence
├── plug-config/          # VimScript plugin configs
│   ├── fzf.vim
│   ├── floaterm.vim
│   ├── ranger.vim
│   └── start-screen.vim
├── keys/
│   └── which-key.vim     # Legacy which-key config (mostly replaced by Lua)
└── themes/
    └── airline.vim       # Airline theme configuration
```

### Loading Order

1. `init.vim` loads first
2. Sources `vim-plug/plugins.vim` (plugin declarations + inline Lua configs)
3. Sources `themes/airline.vim`
4. Sources plug-config files (fzf, start-screen, floaterm, ranger)
5. Sources `lua/config.lua`
6. At end of `plugins.vim`, sources `vim-plug/plugins-load.lua`

### Key Configuration Pattern

**Most plugin configurations are inline in `vim-plug/plugins.vim`** using `lua << EOF` blocks wrapped in `pcall()` for safe loading. This is the dominant pattern throughout the config.

Example:
```lua
lua << EOF
  pcall(function()
    require("plugin-name").setup({
      -- config here
    })
  end)
EOF
```

### Important Architectural Notes

1. **Swiss German Keyboard Support**: Special key mappings for Swiss German keyboards (ö, ä, é, à mapped to brackets)
2. **AI/LLM Integration**: Multiple AI tools configured:
   - GitHub Copilot (enabled by default)
   - Ollama integration (local models)
   - Avante.nvim
   - CodeCompanion
   - Gp.nvim
   - CopilotChat
3. **Plugin Safety**: All plugin setups wrapped in `pcall()` to prevent config errors from breaking Neovim
4. **Treesitter**: Auto-installs parsers for common languages (c, lua, vim, typescript, javascript, tsx, css, scss, gitcommit, diff)
5. **LSP**: Mason auto-installs ts_ls, eslint, cssls language servers

## Key Bindings

Leader key is `<Space>`.

### Essential Navigation
- `<Space>`: Opens which-key menu
- `<Space>f`: Fuzzy find files (Telescope)
- `<Space>F`: Fuzzy find files including hidden
- `<Space>g`: Grep text in files (Telescope live_grep)
- `<Space>G`: Grep including hidden files
- `<Space>b`: Show open buffers
- `<Space>B`: Fuzzy find in current buffer
- `<Space>o`: Open recent files
- `<Space>O`: Start page

### File Management
- `<Space>e`: Toggle NvimTree file explorer
- `<Space>r`: Open Ranger file manager (Q to quit)
- `<Space>E`: Open Explore
- `-`: Open Oil.nvim parent directory

### Window/Buffer Management
- `<Space>w`: Jump to next window
- `<Space>c`: Close buffer
- `<Space>C`: Close window
- `<Space>m`: Maximize current window
- `Shift-l`: Next buffer
- `Shift-h`: Previous buffer

### Git Integration
- `<Space>i`: Open Git Fugitive
- `<Space>L`: LazyGit
- `<Space>x`: Next git hunk
- `<Space>y`: Previous git hunk
- `<Space>X`: Reset hunk
- `]c` / `[c`: Navigate hunks
- `<Space>di`: Preview hunk inline
- `<Space>dd`: Diff this file

### LSP
- `gd`: Go to definition
- `gD`: Go to declaration
- `gi`: Go to implementation
- `gr`: Go to references
- `<Alt-k>`: LSP hover (also `<Space>kk`)
- `<F2>`: LSP rename
- `<F4>`: LSP code action

### Search & Jump
- `s`: EasyMotion search (type character and jump)
- `<Space>j`: Any-jump (jump to definition/reference)
- `<Space>J`: Toggle any-jump VCS ignore
- `<Space>n`: Clear search highlighting
- `<Esc>`: Clear search highlighting

### Utilities
- `<Space>h`: Command history
- `<Space>?`: Cheat sheet
- `<Space>r`: Repeat last command
- `<C-t>`: Toggle terminal (toggleterm)
- `<Space>u`: Undo tree

### Custom Behaviors
- `d`, `c`, `C`: Delete/change without yanking (use black hole register)
- `x`, `X`: Delete single char without yanking
- `J` / `K`: Mapped to `<C-d>` / `<C-u>` for faster scrolling
- `jk` / `jj` in insert mode: Exit to normal mode (better-escape)

## Common Development Tasks

### Editing Configuration

The main entry point is `init.vim`. When modifying:

1. **Adding a new plugin**: Add to `vim-plug/plugins.vim` between `call plug#begin()` and `call plug#end()`
2. **Configuring a plugin**: Add inline Lua config in `vim-plug/plugins.vim` using the pcall pattern
3. **Adding keybindings**: Add to the which-key Lua setup near the end of `vim-plug/plugins.vim`
4. **Changing colorscheme**: Edit lines 99-104 in `init.vim` (currently using everforest)

### Testing Changes

1. Source the config: `:source $MYVIMRC`
2. Or restart Neovim
3. Missing plugins will auto-install on next startup

### Theme/Colorscheme

Current active theme: **everforest** with custom highlight overrides for:
- TSKeyword, TSKeywordFunction, TSKeywordReturn (mapped to Purple)
- Background adapted for iTerm2
- Custom diff colors defined via Lua

Available themes (commented out):
- tokyonight-moon/night
- catppuccin-macchiato
- onedark
- github_dark/dimmed
- doom-one
- kanagawa

## AI/LLM Configuration

### GitHub Copilot
- Enabled by default (`vim.g.copilot_enabled = true`)
- Accept: `<Tab>`
- Next suggestion: `<C-.>` or `<C-ä>`
- Previous: `<C-,>` or `<C-ö>`

### Ollama Models Configured
Default models in various plugins:
- CodeCompanion: `gemma3:12b` (adapter: gemma3)
- Avante: `gpt-oss`
- Gp.nvim agents: gemma3, devstral, gpt-oss, deepseek-r1, phi4-reasoning
- Gen.nvim: Multiple review/enhance prompts for different models

### Running Ollama
Plugins expect Ollama running on `http://localhost:11434`

## Special Considerations

### Swiss German Keyboard
The config has extensive mappings for Swiss German keyboard layouts. If you're not using this keyboard, these can be safely ignored or removed.

### Spell Checking
- Disabled by default
- `<Space>So`: Enable spell check
- `<Space>Sx`: Disable spell check
- `z=`: Suggest corrections
- Enabled automatically for git commit messages

### Performance
- Treesitter highlighting disabled for files > 100KB
- Large file optimizations built-in
- Lazy loading not extensively used (most plugins load eagerly)

### Session Management
- Auto-session plugin installed but disabled by default (`g:auto_session_enabled = v:false`)
- Use `:SSave` to manually save sessions

## Troubleshooting

### Plugin Installation Issues
Run `:PlugInstall` manually if auto-install fails

### LSP Not Working
Check Mason installation: `:Mason` and ensure ts_ls, eslint, cssls are installed

### Configuration Errors
All plugin configs use `pcall()`, so individual plugin failures won't break the entire config. Check `:messages` for errors.

### Treesitter Parsing Issues
Run `:TSUpdate` to update parsers, or `:TSInstall <language>` for specific languages

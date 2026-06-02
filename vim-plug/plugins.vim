" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " https://github.com/tpope/vim-fugitive/pull/2218
  Plug 'tpope/vim-fugitive'
  " Better comments
  Plug 'tpope/vim-commentary'

  Plug 'easymotion/vim-easymotion'

  " Smooth scroll
  Plug 'psliwka/vim-smoothie'

  " if !exists('g:vscode')
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  "Plug 'airblade/vim-gitgutter'
  Plug 'lewis6991/gitsigns.nvim'
  " Plug 'romgrk/barbar.nvim'
  Plug 'tpope/vim-rhubarb'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " See what keys do like in emacs
  " Plug 'liuchengxu/vim-which-key'

  Plug 'vim-airline/vim-airline-themes'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'

  Plug 'lifepillar/vim-cheat40'
  Plug 'leafgarland/typescript-vim'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'preservim/nerdtree'

"  Plug 'kamykn/spelunker.vim'

  Plug 'will133/vim-dirdiff'

  Plug 'pechorin/any-jump.vim'

  "Plug 'jdhao/better-escape.vim'
  Plug 'max397574/better-escape.nvim'


  " https://www.qu8n.com/posts/treesitter-migration-guide-for-nvim-0-12
  Plug 'nvim-treesitter/nvim-treesitter', { 'branch': 'main', 'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  "Plug 'yioneko/nvim-yati', { 'tag': '*' }

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': 'v0.2.0' }

"  Plug 'rmagatti/auto-session'
"  Plug 'rmagatti/session-lens'

  Plug 'jreybert/vimagit'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Themes
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'joshdick/onedark.vim'
  Plug 'rebelot/kanagawa.nvim'

  Plug 'sudormrfbin/cheatsheet.nvim'

  "Plug 'echasnovski/mini.icons'
  Plug 'nvim-mini/mini.nvim', { 'branch': 'stable' }
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  "Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'akinsho/bufferline.nvim', { 'branch': 'main' }
  Plug 'tiagovla/scope.nvim'

  " Completion
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " LSP Support
  Plug 'neovim/nvim-lspconfig'             " Required
  Plug 'williamboman/mason.nvim'           " Optional
  Plug 'williamboman/mason-lspconfig.nvim' " Optional

  "  Snippets
  " Plug 'L3MON4D3/LuaSnip'             " Required
  "Plug 'rafamadriz/friendly-snippets' " Optional

  " Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

  " Plug 'phaazon/hop.nvim'

  " Plug 'mfussenegger/nvim-treehopper'

  Plug 'nvim-tree/nvim-tree.lua'

  Plug 'justinmk/vim-sneak'

  Plug 'RRethy/vim-illuminate'

  Plug 'sindrets/diffview.nvim'

  Plug 'kdheepak/lazygit.nvim'

  Plug 'kkharji/sqlite.lua'
  Plug 'AckslD/nvim-neoclip.lua'

  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-sensible'

  Plug 'kevinhwang91/nvim-bqf'

  Plug 'lukas-reineke/indent-blankline.nvim'

  " Find helper, but is slow on some files
  " Plug 'folke/flash.nvim'

  Plug 'windwp/nvim-autopairs'

  Plug 'tpope/vim-sleuth'

  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  Plug 'projekt0n/github-nvim-theme'

  Plug 'EdenEast/nightfox.nvim'

  Plug 'rose-pine/neovim'

  Plug 'folke/twilight.nvim'

  Plug 'gbprod/yanky.nvim'

  Plug 'folke/zen-mode.nvim'

  Plug 'kevinhwang91/nvim-hlslens'
  Plug 'petertriho/nvim-scrollbar'

  Plug 'chentoast/marks.nvim'

  " Run on console
  " tabby serve --device metal --model StarCoder-1B
  " Including chat
  " tabby serve --device metal --model StarCoder-1B --chat-model WizardCoder-3B
  " tabby serve --device metal --model StarCoder2-3B --chat-model WizardCoder-3B
  " nvim /Users/kast/.tabby-client/agent/config.toml and add the user token
  " you define in the local http server
  " Plug 'TabbyML/vim-tabby'

  Plug 'github/copilot.vim'

  Plug 'romgrk/doom-one.vim'

  " ollama plugin
  Plug 'David-Kunz/gen.nvim'

  Plug 'nvim-pack/nvim-spectre'

  Plug 'tiagovla/tokyodark.nvim'

  " Plug 'huggingface/llm.nvim'

  " Plug 'wellle/context.vim'
  Plug 'nvim-treesitter/nvim-treesitter-context'

  Plug 'nvim-telescope/telescope-ui-select.nvim'
  Plug 'NStefan002/screenkey.nvim', { 'tag': '*' }

  Plug 'hedyhli/outline.nvim'

  Plug 'nomnivore/ollama.nvim'

  Plug 'mbbill/undotree'

  Plug 'stevearc/oil.nvim'

  Plug 'dyng/ctrlsf.vim'

  Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'main' }

  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

  Plug 'kwkarlwang/bufjump.nvim'

  " Avante
  " Deps
  " Plug 'nvim-treesitter/nvim-treesitter'
  " Plug 'nvim-lua/plenary.nvim'
  Plug 'MunifTanjim/nui.nvim'
  " Plug 'MeanderingProgrammer/render-markdown.nvim'

  " Optional deps
  " Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
  " Doesn't work well after pasting from clipboard in search
  " Plug 'HakonHarnes/img-clip.nvim'
  Plug 'zbirenbaum/copilot.lua'
  Plug 'stevearc/dressing.nvim' " for enhanced input UI
  Plug 'folke/snacks.nvim' " for modern input UI
  " Plug 'rcarriga/nvim-notify'
  " Plug 'folke/noice.nvim'
  Plug 'folke/which-key.nvim'
  Plug 'folke/trouble.nvim'

  " Yay, pass source=true if you want to build from source
  " Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

  Plug 'olimorris/codecompanion.nvim'

  Plug 'morhetz/gruvbox'
  "Plug 'sainnhe/everforest'
  Plug 'philippkastws/everforest-nvim'
  Plug 'robitx/gp.nvim'

  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  Plug 'vim-scripts/BufOnly.vim'

  Plug 'folke/todo-comments.nvim'

  Plug 'rmagatti/auto-session'

  Plug 'esmuellert/nvim-eslint'

  Plug 'mikavilpas/yazi.nvim'

call plug#end()

source $HOME/.config/nvim/vim-plug/plugins.config.lua

lua <<EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua <<EOF
EOF

lua <<EOF
EOF

"let g:any_jump_disable_default_keybindings = 1
" Optionally do not ignore ignored directories for any jump
let g:any_jump_disable_vcs_ignore = 0

function! AllAnyJumpToggle()
    if g:any_jump_disable_vcs_ignore
        let g:any_jump_disable_vcs_ignore = 0
        echo "Any Jump: Ignoring VCS ignore files"
    else
        let g:any_jump_disable_vcs_ignore = 1
        echo "Any Jump: NOT ignoring VCS ignore files"
    endif
endfunction

lua <<EOF
EOF

lua <<EOF
EOF

lua <<EOF
EOF

lua <<EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

" lua << EOF
"  -- jump to the begin of scope, uses hop, starting with a for nearest scope if not visible in buffer
"  vim.keymap.set("n", "<space>i", function()
"    require('tsht').move({ side = "start" })
"  end)
" EOF

" " select in visual mode entire function using hop
" omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
" xnoremap <silent> m :lua require('tsht').nodes()<CR>

lua << EOF
EOF


lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

lua << EOF
EOF

" lua << EOF
"   pcall(function()
"     local llm = require('llm')

"     llm.setup({
"       backend = "ollama",
"       --model = "starcoder2:3b",
"       --model = "codellama:7b",
"       model = "codellama:7b-code",
"       --model = "stable-code:latest",
"       accept_keymap = "<S-CR>",
"       dismiss_keymap = "<CR>",
"       url = "http://localhost:11434/api/generate",
"       -- request_body = {
"       --   options = {
"       --     temperature = 0.8, --0.2,
"       --     top_p = 0.95,
"       --   },
"       -- },
"       enable_suggestions_on_startup = false,
"       --enable_suggestions_on_startup = true,
"       -- MasonInstall llm-ls
"       lsp = {
"         bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
"       },
"     })
"   end)
" EOF

  " api_token = nil, -- cf Install paragraph
  " model = "bigcode/starcoder2-15b", -- the model ID, behavior depends on backend
  " backend = "huggingface", -- backend ID, "huggingface" | "ollama" | "openai" | "tgi"
  " url = nil, -- the http url of the backend
  " tokens_to_clear = { "<|endoftext|>" }, -- tokens to remove from the model's output
  " -- parameters that are added to the request body, values are arbitrary, you can set any field:value pair here it will be passed as is to the backend
  " request_body = {
  "   parameters = {
  "     max_new_tokens = 60,
  "     temperature = 0.2,
  "     top_p = 0.95,
  "   },
  " },
  " -- set this if the model supports fill in the middle
  " fim = {
  "   enabled = true,
  "   prefix = "<fim_prefix>",
  "   middle = "<fim_middle>",
  "   suffix = "<fim_suffix>",
  " },
  " debounce_ms = 150,
  " accept_keymap = "<Tab>",
  " dismiss_keymap = "<S-Tab>",
  " tls_skip_verify_insecure = false,
  " -- llm-ls configuration, cf llm-ls section
  " lsp = {
  "   bin_path = nil,
  "   host = nil,
  "   port = nil,
  "   cmd_env = nil, -- or { LLM_LOG_LEVEL = "DEBUG" } to set the log level of llm-ls
  "   version = "0.5.3",
  " },
  " tokenizer = nil, -- cf Tokenizer paragraph
  " context_window = 1024, -- max number of tokens for the context window
  " enable_suggestions_on_startup = true,
  " enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
  " disable_url_path_completion = false, -- cf Backend


" set termguicolors
lua << EOF
EOF

lua <<EOF
EOF

lua <<EOF
EOF

" autocmd! User avante.nvim
" lua << EOF
"   pcall(function()
"     --require('avante_lib').load()
"     --require('avante').setup()
"     require('avante').setup({
"       provider = "ollama",
"       providers = {
"         ollama = {
"           --model = "qwq:32b",
"           --model = "gpt-oss",
"           model = "glm-4.7:cloud",
"           --model = "gpt-oss:120b-cloud",
"           is_env_set = require("avante.providers.ollama").check_endpoint_alive,
"         },
"       }
"       --mode = "legacy",
"       --provider = "ollama",
"       --providers = {
"       --  ollama = {
"       --    endpoint = "http://127.0.0.1:11434", -- Note that there is no /v1 at the end.
"       --    --model = "gemma3",
"       --    model = "gpt-oss",
"       --    --model = "gpt-oss:120b-cloud",
"       --    --model = "minimax-m2:cloud",
"       --    --model = "codegemma",
"       --    --model = "devstral",
"       --    --model = "qwq:32b",
"       --    disable_tools = true,
"       --    disable_tool_calls = true,
"       --  },
"       --},
"       -- provider = "ollama",
"       -- providers = {
"       --   ollama = {
"       --     endpoint = "http://127.0.0.1:11434",
"       --     timeout = 30000, -- Timeout in milliseconds
"       --     model = "gemma3",
"       --     --model = "phi4-reasoning",
"       --     --model = "devstral",
"       --     --model = "qwq:32b"
"       --     --model = "deepseek-r1"
"       --   },
"       -- },
"     })
"   end)
" EOF


lua <<EOF
EOF

let g:github_enterprise_urls = ['https://git.autodesk.com']

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif



" " packer plugin manager
" lua << EOF
" local ensure_packer = function()
"   local fn = vim.fn
"   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
"   if fn.empty(fn.glob(install_path)) > 0 then
"     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
"     vim.cmd [[packadd packer.nvim]]
"     return true
"   end
"   return false
" end

" local packer_bootstrap = ensure_packer()

" return require('packer').startup(function(use)
"   use 'wbthomason/packer.nvim'
"   -- My plugins here

"   -- Automatically set up your configuration after cloning packer.nvim
"   -- Put this at the end after all plugins
"   if packer_bootstrap then
"     require('packer').sync()
"   end
" end)
" EOF




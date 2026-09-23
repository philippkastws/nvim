" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " https://github.com/tpope/vim-fugitive/pull/2218
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'easymotion/vim-easymotion'
  Plug 'psliwka/vim-smoothie'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-rhubarb'
  Plug 'voldikss/vim-floaterm'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': 'v0.2.0' }
  Plug 'nvim-telescope/telescope-live-grep-args.nvim'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'sindrets/diffview.nvim'
  Plug 'nvim-treesitter/nvim-treesitter-context'
  Plug 'nvim-telescope/telescope-ui-select.nvim'
  Plug 'folke/which-key.nvim'
  Plug 'philippkastws/everforest-nvim'
  Plug 'rmagatti/auto-session'
  Plug 'mikavilpas/yazi.nvim'

call plug#end()

source $HOME/.config/nvim/vim-plug/plugins.config.lua

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

" lua << EOF
"  -- jump to the begin of scope, uses hop, starting with a for nearest scope if not visible in buffer
"  vim.keymap.set("n", "<space>i", function()
"    require('tsht').move({ side = "start" })
"  end)
" EOF

" " select in visual mode entire function using hop
" omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
" xnoremap <silent> m :lua require('tsht').nodes()<CR>

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


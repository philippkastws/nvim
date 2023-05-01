" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  "Plug 'suy/vim-context-commentstring'
  " Change dates fast
  "Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  "Plug 'glts/vim-radical'
  " Files
  "Plug 'tpope/vim-eunuch'
  " Repeat stuff
  "Plug 'tpope/vim-repeat'
  " Surround
  "Plug 'tpope/vim-surround'
  " Better Comments
  "Plug 'tpope/vim-commentary'
  " Have the file system follow you around
  "Plug 'airblade/vim-rooter'
  " auto set indent settings
  "Plug 'tpope/vim-sleuth'

  " Text Navigation
  "Plug 'justinmk/vim-sneak'
  "Plug 'unblevable/quick-scope'
  " Add some color
  "Plug 'norcalli/nvim-colorizer.lua'
  "Plug 'luochen1990/rainbow'
  " Better Syntax Support
  "Plug 'sheerun/vim-polyglot'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{'
  "Plug 'jiangmiao/auto-pairs'
  " Closetags
  "Plug 'alvan/vim-closetag'
  " Themes
  "Plug 'joshdick/onedark.vim'
  "Plug 'navarasu/onedark.nvim'
  " Intellisense
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Status Line
  Plug 'vim-airline/vim-airline'
  "Plug 'kevinhwang91/rnvimr'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  "Plug 'tpope/vim-rhubarb'
  "Plug 'junegunn/gv.vim'
  "Plug 'rhysd/git-messenger.vim'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista
  "Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  "Plug 'junegunn/goyo.vim'
  " Snippets
  "Plug 'honza/vim-snippets'
  "Plug 'mattn/emmet-vim'
  " Interactive code
  "Plug 'metakirby5/codi.vim'
  " Debugging
  " Plug 'puremourning/vimspector'
  " Better tabline
  "Plug 'mg979/vim-xtabline'
  " undo time travel
  "Plug 'mbbill/undotree'
  " highlight all matches under cursor
  "Plug 'RRethy/vim-illuminate'
  " Find and replace
  "Plug 'ChristianChiarulli/far.vim'
  " Plug 'brooth/far.vim'
  " Auto change html tags
  "Plug 'AndrewRadev/tagalong.vim'
  " live server
  "Plug 'turbio/bracey.vim'
  " Smooth scroll
  Plug 'psliwka/vim-smoothie'
  " async tasks
  "Plug 'skywind3000/asynctasks.vim'
  "Plug 'skywind3000/asyncrun.vim'
  " Swap windows
  "Plug 'wesQ3/vim-windowswap'
  " Markdown Preview
  "Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
  " Easily Create Gists
  "Plug 'mattn/vim-gist'
  "Plug 'mattn/webapi-vim'
  " Async Linting Engine
  " TODO make sure to add ale config before plugin
  " Plug 'dense-analysis/ale'
  " Better Whitespace
  "Plug 'ntpeters/vim-better-whitespace'
  " Multiple Cursors
  "Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  "Plug 'moll/vim-bbye'
  " Plugin Graveyard

  " jsx syntax support
  " Plug 'maxmellon/vim-jsx-pretty'
  " Typescript syntax
  " Plug 'HerringtonDarkholme/yats.vim'
  " Multiple Cursors
  " Plug 'terryma/vim-multiple-cursors'
  " Plug 'kaicataldo/material.vim'
  " Plug 'NLKNguyen/papercolor-theme'
  " Plug 'tomasiser/vim-code-dark'
  " Vim Wiki
  " Plug 'https://github.com/vimwiki/vimwiki.git'
  " Better Comments
  " Plug 'jbgutierrez/vim-better-comments'
  " Echo doc
  " Plug 'Shougo/echodoc.vim'
  "Plug 'glepnir/spaceline.vim'
  Plug 'vim-airline/vim-airline-themes'
  " Ranger
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  " Making stuff
  " Plug 'neomake/neomake'
  " Plug 'mhinz/vim-signify'
  " Plug 'easymotion/vim-easymotion'
  " Plug 'preservim/nerdcommenter'
  " Plug 'brooth/far.vim'
  " Plug 'atishay/far.vim'
  Plug 'lifepillar/vim-cheat40'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'preservim/nerdtree'

"  Plug 'kamykn/spelunker.vim'

  Plug 'will133/vim-dirdiff'

  Plug 'pechorin/any-jump.vim'

  Plug 'jdhao/better-escape.vim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

"  Plug 'rmagatti/auto-session'
"  Plug 'rmagatti/session-lens'

"  Plug 'TimUntersberger/neogit'
  Plug 'jreybert/vimagit'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Themes
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'navarasu/onedark.nvim'

  Plug 'sudormrfbin/cheatsheet.nvim'

  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

  " Completion
  "Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  " For vsnip users.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  " LSP Support
  Plug 'neovim/nvim-lspconfig'             " Required
  Plug 'williamboman/mason.nvim'           " Optional
  Plug 'williamboman/mason-lspconfig.nvim' " Optional

  " Autocompletion Engine
  "Plug 'hrsh7th/nvim-cmp'         " Required
  "Plug 'hrsh7th/cmp-nvim-lsp'     " Required
  "Plug 'hrsh7th/cmp-buffer'       " Optional
  "Plug 'hrsh7th/cmp-path'         " Optional
  "Plug 'saadparwaiz1/cmp_luasnip' " Optional
  "Plug 'hrsh7th/cmp-nvim-lua'     " Optional

  "  Snippets
  Plug 'L3MON4D3/LuaSnip'             " Required
  "Plug 'rafamadriz/friendly-snippets' " Optional

  Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

  Plug 'folke/trouble.nvim'

  Plug 'phaazon/hop.nvim'

  Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

lua <<EOF
  -- Set up nvim-cmp.
  pcall(function()
    local cmp = require'cmp'

    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
      }, {
        { name = 'buffer' },
      }),
      formatting = {
        format = function(entry, vim_item)
          -- fancy icons and a name of kind
          --vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

          -- set a name for each source
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            buffer = "[Buffer]",
            vsnip = "[Vsnip]",
            luasnip = "[Luasnip]",
            ultisnips = "[Ultisnips]",
            snippy = "[Snippy]",
          })[entry.source.name]
          return vim_item
        end,
      },
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })

  end)
EOF

lua <<EOF
  pcall(function()
    local lsp = require('lsp-zero').preset({
      name = 'minimal',
      set_lsp_keymaps = true,
      manage_nvim_cmp = true,
      suggest_lsp_servers = false,
    })

    lsp.setup()

    local signs = {
      { name = "DiagnosticSignError", text = "" },
      { name = "DiagnosticSignWarn", text = "" },
      { name = "DiagnosticSignHint", text = "" },
      { name = "DiagnosticSignInfo", text = "" },
    }
    for _, sign in ipairs(signs) do
      vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end
  end)
EOF

lua << EOF
  pcall(function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end)
EOF

lua << EOF
  pcall(function()
    require('hop').setup()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    vim.keymap.set('', 'f', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
    end, {remap=true})
    vim.keymap.set('', 'F', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
    end, {remap=true})
  end)
EOF

lua << EOF

  pcall(function()
    require("nvim-tree").setup()
  end)

EOF


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

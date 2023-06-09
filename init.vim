"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/which-key.vim

source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/ranger.vim

:set mouse=a
:set ignorecase
:set smartcase
:set timeoutlen=500
:set list
:set cursorline
:set spelllang=en,en_us,de
:set spelloptions=camel
" This is local to buffer, so we have to enable it on each new and opened buffer
autocmd BufRead,BufNewFile * setlocal spelloptions=camel

" Spell-check Markdown files and Git Commit Messages
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

set clipboard+=unnamedplus

set tabstop=2       " number of visual spaces per TAB
set softtabstop=-1 " Use value of shiftwidth
set shiftwidth=2    " number of spaces to use for autoindent
set autoindent
set copyindent      " copy indent from the previous line
set smarttab       " Always use shiftwidth
set linebreak
filetype plugin indent on

let g:better_escape_interval = 500
let g:better_escape_shortcut = ['jk', 'jj', 'kj']

let g:auto_session_enabled = v:false

let g:onedark_config = {
    \ 'style': 'dark',
    \ 'transparent': 'true',
\}
colorscheme onedark

:hi SpellBad gui=undercurl guibg=#552222 ctermbg=224

" Map the jump sequences
nmap <buffer> <C-¨> <C-]>
nmap <buffer> <C-ü> <C-[>

" For quicker navigation map these
map J <C-d>
map K <C-u>

" show line numbers
:set number


lua <<EOF

pcall(function()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "typescript", "javascript", "tsx", "css", "scss" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } },
}

end)

EOF

lua <<EOF

pcall(function()

local tab_number = 2
vim.opt.showtabline = tab_number                -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = tab_number                 -- the number of spaces inserted for each indentation
vim.opt.tabstop = tab_number                    -- insert 2 spaces for a tab

end)

EOF

" Setup bufferline
"set termguicolors
lua << EOF

pcall(function()

require "bufferline".setup {
  options = {
--    numbers = "none",
--    number_style = "",
--    mappings = true,
--    buffer_close_icon = "",
--    modified_icon = "",
--    close_icon = "",
--    left_trunc_marker = "",
--    right_trunc_marker = "",
--    max_name_length = 18,
--    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
--    tab_size = 18,
--    diagnostics = "nvim_lsp",
--    diagnostics_indicator = function(count, level, diagnostics_dict, context)
--      local s = " "
--      for e, n in pairs(diagnostics_dict) do
--        local sym = e == "error" and " "
--          or (e == "warning" and " " or "" )
--        s = s .. n .. sym
--      end
--      return s
--    end,
--    show_buffer_close_icons = false,
--    show_close_icon = false,
--    show_tab_indicators = true,
--    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--    separator_style = "thin",
--    enforce_regular_tabs = false,
--    always_show_bufferline = true,
--    sort_by = "id",
  }
}

end)

EOF

" Fix copilot tab to accept suggestion
lua <<EOF

pcall(function()

-- Disable copilot by default for now
vim.g.copilot_enabled = false -- true
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

local cmp = require("cmp")

cmp.setup({
    mapping = {
        ["<Tab>"] = function(fallback)
            -- if cmp.visible() then
            --     cmp.select_next_item()
            -- elseif vim.fn["vsnip#available"](1) > 0 then
            --     -- handle vsnip
            -- else
                local copilot_keys = vim.fn["copilot#Accept"]()
                if copilot_keys ~= "" then
                    vim.api.nvim_feedkeys(copilot_keys, "i", true)
                else
                    fallback()
                end
            -- end
        end,
    },
})

end)

EOF

let g:VM_theme = 'neon'

" Disable gutter keys, otherwise they show up in which-key
let g:gitgutter_map_keys = 0

let mapleader = "," " map leader to comma
" Remove search results
map <leader>h :noh<CR>

" add key mapping for swiss german keyboard
nnoremap <C-ö> <C-[>
nnoremap <C-ä> <C-]>
inoremap <C-ö> <C-[>
inoremap <C-ä> <C-]>
inoremap <C-ü> <C-[>
inoremap <C-é> <C-]>

inoremap ö [
inoremap ä ]
inoremap é {
inoremap à }

" github copilot mappings
imap <silent> <C-.> <Plug>(copilot-next)
imap <silent> <C-ä> <Plug>(copilot-next)
imap <silent> <C-,> <Plug>(copilot-previous)
imap <silent> <C-ö> <Plug>(copilot-previous)

set backspace=indent,eol,start
nnoremap <BS> "_X
nnoremap <C-BS> "_x
nnoremap d "_d
vnoremap d "_d

" copy selected block
vmap <leader>b y'>p

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

nnoremap <C-j> jzz
nnoremap <C-k> kzz

"let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " case insensitive

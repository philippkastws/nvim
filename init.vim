"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


source $HOME/.config/nvim/vim-plug/plugins.vim

if !exists('g:vscode')
  " source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/themes/airline.vim
endif

source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/ranger.vim

:set mouse=a
:set ignorecase
:set smartcase
:set timeoutlen=1000
:set list
:set cursorline
:set spelllang=en_us
":set spelllang=en_us,de_ch
:set spelloptions=camel
:set spell
" disable spell checking for capital words
:set spellcapcheck=
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

" let g:better_escape_interval = 500
" let g:better_escape_shortcut = ['jk', 'jj', 'kj']

let g:auto_session_enabled = v:false

" 'style': 'dark',
" 'style': 'darker',
" 'style': 'warmer',
let g:onedark_config = {
    \ 'style': 'dark',
    \ 'transparent': 'true',
\}

lua <<EOF
pcall(function()
require("tokyonight").setup({
  transparent = true
});
end)
EOF

lua <<EOF
pcall(function()
require('kanagawa').setup({
    transparent = true
});
end)
EOF

lua <<EOF
pcall(function()
require("catppuccin").setup({
    transparent_background = true
});
end)
EOF
" let g:airline_theme='catppuccin'
let g:airline_theme='onedark'

" colorscheme onedark
" colorscheme catppuccin-macchiato
" colorscheme tokyonight
if !exists('g:vscode')
    colorscheme tokyonight-night
    colorscheme tokyonight-moon
endif
" colorscheme github_dark
" colorscheme doom-one

:hi SpellBad gui=undercurl guibg=#552222 ctermbg=224

" Set selected line number color
:hi CursorLineNr ctermfg=11 guifg=Yellow

" Map the jump sequences
nmap <buffer> <C-¨> <C-]>
nmap <buffer> <C-ü> <C-[>

" Map J, K, H, L originals to alt
nnoremap <a-j> J
nnoremap <a-k> K
nnoremap <a-h> H
nnoremap <a-l> L
" Map K to alt-k
nnoremap <A-k> <cmd>:lua vim.lsp.buf.hover()<CR>
" For quicker navigation map these
map J <C-d>
map K <C-u>

" show line numbers
:set number
":set relativenumber

" show whitespaces by default
:set listchars=space:·,tab:→\ ,trail:␣,precedes:«,extends:»,eol:¶ | :set list
":set listchars=space:·,tab:→\ ,trail:␣,precedes:«,extends:»,eol:⏎ | :set list
":set listchars=space:·,tab:→\ ,trail:␣,precedes:«,extends:»,eol:↵ | :set list

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

" Fix copilot tab to accept suggestion
lua <<EOF

pcall(function()

-- Disable copilot by default for now
vim.g.copilot_enabled = true -- true
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
        ['<CR>'] = nil,
        ['<Right>'] = cmp.mapping.confirm({ select = true }),
    },
})

end)

EOF

let g:VM_theme = 'neon'

" Disable gutter keys, otherwise they show up in which-key
let g:gitgutter_map_keys = 0

let mapleader = " " " map leader to space
" Remove search results
nmap <leader>n :noh<CR>
lua vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

" Preview substitutions live, as you type!
lua vim.opt.inccommand = 'split'

" add key mapping for swiss german keyboard
nnoremap <C-ö> <C-[>
nnoremap <C-ä> <C-]>
inoremap <C-ö> <C-[>
inoremap <C-ä> <C-]>
inoremap <C-ü> <C-[>
inoremap <C-é> <C-]>

set langmap=öäéà;[]{}

" map! ö [
" map! ä ]
" map! é {
" map! à }

" noremap! ö [
" noremap! ä ]
" noremap! é {
" noremap! à }

" nnoremap ö [
" nnoremap ä ]
" nnoremap é {
" nnoremap à }

" onoremap ö [
" onoremap ä ]
" onoremap é {
" onoremap à }

" xnoremap ö [
" xnoremap ä ]
" xnoremap é {
" xnoremap à }

" " noremap in find string as well
" cnoremap ö [
" cnoremap ä ]
" cnoremap é {
" cnoremap à }

" snoremap ö [
" snoremap ä ]
" snoremap é {
" snoremap à }

" inoremap ö [
" inoremap ä ]
" inoremap é {
" inoremap à }

" github copilot mappings
imap <silent> <C-.> <Plug>(copilot-next)
imap <silent> <C-ä> <Plug>(copilot-next)
imap <silent> <C-,> <Plug>(copilot-previous)
imap <silent> <C-ö> <Plug>(copilot-previous)

nmap <silent> <C-S-f> <Plug>CtrlSFPrompt

set backspace=indent,eol,start
" Commands to not save to clipboard
nnoremap <BS> "_X
nnoremap <C-BS> "_x
nnoremap d "_d
nnoremap C "_C
nnoremap c "_c
vnoremap d "_d
vnoremap C "_C
vnoremap c "_c

" copy selected block
vmap <leader>b y'>p
" max/only window
nmap <leader>m <C-W>o
" map paste what has been yanked
" map <leader>p "0p
" map <leader>P "0P

if !exists('g:vscode')
    " Navigate buffers
    nnoremap <S-l> :bnext<CR>
    nnoremap <S-h> :bprevious<CR>
endif

" Repeat last command
nnoremap <leader>r @:
vnoremap <leader>r @:

"let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " case insensitive

" easymotion over window
" nmap <Leader>s <Plug>(easymotion-overwin-f)
vmap <Leader>s <Plug>(easymotion-s)
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f)
vmap <Leader><Leader>s <Plug>(easymotion-s)

nmap s <Plug>(easymotion-overwin-f)

" create undo group after 4 seconds wait in insert mode
au CursorHoldI * let &undolevels = &undolevels
" create undo points when typing these keys
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ( (<c-g>u
inoremap [ [<c-g>u
inoremap = =<c-g>u
inoremap <space> <space><c-g>u
inoremap <CR> <CR><c-g>u
" c-u in insert mode undoes to the last undo point
inoremap <c-u> <C-O>u

lua <<EOF

-- vim.o.completeopt = 'menuone,noselect'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- Search for selected text
vim.keymap.set('v', '/', "\"fy/\\V<C-R>f<CR>" )

EOF

" Allow to move in insert mode
:imap <C-h> <C-o>h
:imap <C-j> <C-o>j
:imap <C-k> <C-o>k
:imap <C-l> <C-o>l

" Open telescope with selected text in visual mode
vnoremap <leader>g y<Esc>:Telescope live_grep<CR><C-r>"
vnoremap <leader>f y<Esc>:Telescope find_files<CR><C-r>"

" Clear command line
augroup cmdline
    autocmd!
    autocmd CmdlineLeave : echo ''
augroup end

" Exit insert mode without moving the cursor inappropriately
inoremap <silent> <Esc> <Esc>`^

" keep cursor position when yanking in visual mode
xnoremap <silent> y ygv<Esc>

" set updatetime 60000
" " add all places that you've stayed at for a longer time ('updatetime'; default is 4 seconds)
" autocmd CursorHold * normal! m'

map <leader>J :call AllAnyJumpToggle()<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

" Stop yanking on past in selection
vnoremap p P

" Stop yanking with single x, this makes only sense with selections
nnoremap x "_x
nnoremap X "_X

" nnoremap WW :w<cr>

inoremap <S-Down> <Down>
inoremap <S-Up> <Up>

let g:EasyMotion_do_shade = 0
" " Workaround strange flickering on easymotion with LSP
" " https://github.com/easymotion/vim-easymotion/issues/402#issuecomment-1808644737
" if !exists('g:vscode')
" lua << EOF
"   pcall(function()
"     vim.api.nvim_create_autocmd("User", {pattern = {"EasyMotionPromptBegin"}, callback = function() vim.diagnostic.disable() end})
"     function check_easymotion()
"       local timer = vim.loop.new_timer()
"       timer:start(500, 0, vim.schedule_wrap(function()
"         -- vim.notify("check_easymotion")
"         if vim.fn["EasyMotion#is_active"]() == 0 then
"           vim.diagnostic.enable()
"           vim.g.waiting_for_easy_motion = false
"         else
"           check_easymotion()
"         end
"       end))
"     end
"     vim.api.nvim_create_autocmd("User", {
"       pattern = "EasyMotionPromptEnd",
"       callback = function()
"         if vim.g.waiting_for_easy_motion then return end
"         vim.g.waiting_for_easy_motion = true
"         check_easymotion()
"       end
"     })
"   end)
" EOF
" endif

"" lazy plugin manager
"lua << EOF
"local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
"if not (vim.uv or vim.loop).fs_stat(lazypath) then
"  vim.fn.system({
"    "git",
"    "clone",
"    "--filter=blob:none",
"    "https://github.com/folke/lazy.nvim.git",
"    "--branch=stable", -- latest stable release
"    lazypath,
"  })
"end
"vim.opt.rtp:prepend(lazypath)
"require("lazy").setup({
"{
"    "tiagovla/tokyodark.nvim",
"    opts = {
"        -- custom options here
"    },
"    config = function(_, opts)
"        require("tokyodark").setup(opts) -- calling setup is optional
"        vim.cmd [[colorscheme tokyodark]]
"    end,
"}
"})
"EOF
"

" Compare entire buffer against clipboard
function! DiffClipboard()
    let ft=&ft
    vertical new
    setlocal bufhidden=wipe buftype=nofile nobuflisted noswapfile
    :1put
    silent 0d_
    diffthis
    setlocal nomodifiable
    execute "set ft=" . ft
    wincmd p
    diffthis
endfunction
command! DiffClipboard call DiffClipboard()

" compare visual selection against clipboard
lua <<EOF
local function compare_to_clipboard()
  local ftype = vim.api.nvim_eval("&filetype")
  vim.cmd(string.format([[
    execute "normal! \"xy"
    vsplit
    enew
    normal! P
    setlocal buftype=nowrite
    set filetype=%s
    diffthis
    execute "normal! \<C-w>\<C-w>"
    enew
    setlocal buftype=nowrite
    set filetype=%s
    normal! "xP
    diffthis
  ]], ftype, ftype))
end
vim.keymap.set('x', '<Leader>d', compare_to_clipboard)
EOF

function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""' 
        let i=i+1
    endwhile
endfunction

command! ClearRegisters call ClearRegisters()

" tabby setup key map overwirte for tab key
imap <script><silent><nowait><expr> <C-G> tabby#inline_completion#service#Accept()

" do not bind <leader>bd
let g:bclose_no_plugin_maps = v:true

" History key generated with Qwen
"
" let g:last_command_was_jump = 0

" " Custom mappings for jump list navigation
" nnoremap <C-o> :let g:last_command_was_jump = 1<CR><C-o>
" nnoremap <C-i> :let g:last_command_was_jump = 1<CR><C-i>

" autocmd CursorHold * call CheckLastCommand()

" function! CheckLastCommand()
"   if g:last_command_was_jump
"     let g:last_command_was_jump = 0
"   else
"     normal! m'
"   endif
" endfunction

"lua <<EOF
"require("config.lazy")
"EOF


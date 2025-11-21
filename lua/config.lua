---@diagnostic disable: undefined-global
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.timeoutlen = 1000
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.spelllang = "en_us"
vim.opt.spelloptions = "camel"
vim.opt.spellcapcheck = ""
vim.o.spell = false

-- Enable break indent
vim.o.breakindent = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false
-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true


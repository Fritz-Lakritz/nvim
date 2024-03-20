vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.smartindent = true

vim.opt.scrolloff = 8

vim.opt.mouse = 'a'

vim.opt.spelllang = { 'de', 'en' }

vim.opt.spell = true

vim.o.autoindent = true -- Enable auto-indentation
vim.o.expandtab = true  -- Use spaces instead of tabs
vim.o.shiftwidth = 4    -- Set the number of spaces inserted for each indentation level

vim.opt.clipboard = 'unnamedplus'

vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

vim.opt.hlsearch = true

vim.opt.laststatus = 3

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")

vim.keymap.set("n", "<leader>wf", ":Telescope vimwiki<Enter>")

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")


vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer = 0})
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer = 0})

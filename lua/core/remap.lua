vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")

vim.keymap.set("n", "<leader>wf", ":Telescope vimwiki<Enter>")

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")


-- LSP
vim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")
vim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>")

-- resize
vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>")
vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>")


-- open inkscape currently not working
vim.api.nvim_set_keymap('n', '<leader>is', [[:lua require'core.inkscape'.open_with_filename()<CR>]],
    { noremap = true, silent = true })

-- auto correct
vim.api.nvim_set_keymap('i', '<C-s>', '<C-g>u<Esc>[s1z=`]a<C-g>u', { noremap = true, silent = true })

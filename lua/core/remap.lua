vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/work/scripts/tmuxsession<CR>")

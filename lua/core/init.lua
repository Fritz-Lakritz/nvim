require("core.set")
require("core.remap")
require("core.packer")
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.api.nvim_set_var("UltiSnipsSnippetDirectories", { "UltiSnips", "my-snippets" })

-- autocommands
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

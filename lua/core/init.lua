require("core.set")
require("core.remap")
require("core.packer")
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.api.nvim_set_var("UltiSnipsSnippetDirectories", { "UltiSnips", "my-snippets" })

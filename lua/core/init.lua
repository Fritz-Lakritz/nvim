require("core.set")
require("core.remap")
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

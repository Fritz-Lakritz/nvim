require("core.set")
require("core.remap")
require("core.packer")
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

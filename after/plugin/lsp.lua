require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = {
       "lua_ls",
       "texlab",
       "pylsp",
   },
})

require("lspconfig").hls.setup({
    on_attach = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gD", vim.lsp.buf.decleration, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    end,
})
require("lspconfig").lua_ls.setup {
    on_attach = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gD", vim.lsp.buf.decleration, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    end
}
require("lspconfig").texlab.setup {
    on_attach = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gD", vim.lsp.buf.decleration, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    end
}
require("lspconfig").jdtls.setup {
    on_attach = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gD", vim.lsp.buf.decleration, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    end,
}
require("lspconfig").pylsp.setup {
    on_attach = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gD", vim.lsp.buf.decleration, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
    end,
}

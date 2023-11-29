require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "texlab",
        "jdtls",
    },
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").texlab.setup {}
require("lspconfig").jdtls.setup {}

local group = vim.api.nvim_create_augroup("Lua Snippets", {clear = true})
local file_pattern = "*.lua"

local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {}

local group = vim.api.nvim_create_augroup("Lua Snippets", {clear = true})

local myFirstSnip = s("myFirstSnip", {t"Hello World!"})
table.insert(snippets, myFirstSnip)


return snippets, autosnippets

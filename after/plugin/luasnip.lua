local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

-- parser is used for VS**** style snippets.
ls.add_snippets("lua", {
    ls.parser.parse_snippet("expand", "-- this is what expand does"),

    ls.parser.parse_snippet("lf", "local $1 = funktion($2)\n\t$0\nend"),

    s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1)})),
})

-- latex snippets
ls.add_snippets("tex", {
    ls.parser.parse_snippet("lorem", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse"),

    -- begin/end
    ls.parser.parse_snippet("align", "\\begin{align*}\n\t$0\n\\end{align*}"),
    ls.parser.parse_snippet("begin", "\\begin{$1}\n\t$0\n\\end{$1}"),


    -- text
    ls.parser.parse_snippet("section", "\\section{$1}\n\t$0"),
    ls.parser.parse_snippet("chapter", "\\chapter{$1}\n\t$0"),
    ls.parser.parse_snippet("subsection", "\\subsection{$1}\n\t$0"),
    ls.parser.parse_snippet("subsubsection", "\\subsubsection{$1}\n\t$0"),
    ls.parser.parse_snippet("paragraph", "\\paragraph{$1}\n\t$0"),
    ls.parser.parse_snippet("subparagraph", "\\subparagraph{$1}\n\t$0"),

    -- standard
    ls.parser.parse_snippet("document", "\\documentclass{$1}\n\n\\begin{document}\n\t$0\n\\end{document}"),

    -- input
    ls.parser.parse_snippet("template", "\\input{preamble}\n\\input{macros}\n\\input{letterfonts}"),
})

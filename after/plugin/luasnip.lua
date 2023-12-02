local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

-- parser is used for VS**** style snippets.
ls.add_snippets("lua", {
    ls.parser.parse_snippet("expand", "-- this is what expand does"),

    ls.parser.parse_snippet("lf", "local $1 = funktion($2)\n\t$0\nend,"),

    s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1)})),

    s("choice", c(1, {
        t("one"),
        t("two"),
        t("three"),
    })),
})
ls.add_snippets("all", {
    s("date", f(function(_, _)
        return os.date("%Y-%m-%d")
    end, {})),
})


-- latex snippets
ls.add_snippets("tex", {
    ls.parser.parse_snippet("lorem", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse"),

    -- begin/end
    ls.parser.parse_snippet("ali*", "\\begin{align*}\n\t$0\n\\end{align*}"),
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

    -- Kommentare
    ls.parser.parse_snippet("Quelle", "\\begin{flushright}\n\t\\tiny{Quelle: $1}\n\\end{flushright}"),
})
ls.add_snippets("java", {
    ls.parser.parse_snippet("main", "public static void main(String[] args) {\n\t$0\n}"),
    s("class", fmt("public class {} {{\n\t{}\n}}", {
        i(1, "name"),
        i(0, ""),
    })),
    s("method", fmt("{}{}{} {}({}){{\n\t{}\n}}", {-- spancing is important
        c(1, {
            t("public "),
            t("private "),
            t("protected "),
        }),
        c(2, {
            t("static "),
            t(""),
        }),
        i(3, "void"),
        i(4, "name"),
        i(5, ""),
        i(0, ""),
    })),
})

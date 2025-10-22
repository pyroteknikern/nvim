local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    s("temp", {
    t({
      "\\documentclass{article}",
      "\\usepackage{graphicx}",
      "\\usepackage{listings}",
      "\\usepackage{xcolor} % optional, for colors",
      "\\usepackage[a4paper]{geometry}",
      "\\lstdefinestyle{mypython}{",
      "    language=Python,",
      "    basicstyle=\\ttfamily\\small,",
      "    keywordstyle=\\color{blue}\\bfseries,",
      "    stringstyle=\\color{orange},",
      "    commentstyle=\\color{green!50!black}\\itshape,",
      "    numbers=left,",
      "    numberstyle=\\tiny\\color{gray},",
      "    stepnumber=1,",
      "    numbersep=5pt,",
      "    frame=single,",
      "    breaklines=true,",
      "    showstringspaces=false",
      "}",
      "\\lstdefinestyle{terminal}{",
      "    basicstyle=\\ttfamily\\small,",
      "    stringstyle=\\color{yellow},",
      "    showstringspaces=false,",
      "    breaklines=true",
      "}",
      "",
      "\\lstset{style=mypython}",
      "",
      "\\begin{document}",
      "\\title{", 
    }),
    i(1, "R7025R lab 1"),
    t({ "}", "\\maketitle", "\\author{", "\\begin{center}" }),
    i(2, "Arvid Almlöf"),
    t({"\\end{center}", "}", "", "\\end{document}" }),
  }),
  -- inline math \( ... \)
  s("inline", { t("\\("), i(1, "x"), t("\\)") }),

  -- inline math $ ... $
  s("dm", { t("$"), i(1, "x"), t("$") }),

  -- display math \[ ... \]
  s("eq", {
    t({ "\\[", "  " }),
    i(1, "equation"),
    t({ "", "\\]" }),
  }),
}

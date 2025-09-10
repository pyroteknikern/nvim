local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
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

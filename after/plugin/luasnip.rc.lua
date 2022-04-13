local ls = require("luasnip")

local s = ls.s
local i = ls.insert_node
local t = ls.text_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

ls.config.set_config {
  history = true
}

ls.snippets = {
  all = {
    s("clg", fmt("console.log({})", { i(1, "") })),
    s("cle", fmt("console.error({})", { i(1, "") })),
  },
}


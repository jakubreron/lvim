local M = {}

M.config = function()
  vim.g.vim_vue_plugin_config = {
    syntax = {
      template = { "html" },
      script = { "javascript", "typescript" },
      style = { "css", "scss", "sass" },
      i18n = { "json" },
      route = "json",
    },
    full_syntax = { "json" },
    initial_indent = { "i18n", "i18n.json" },
    attribute = 1,
    keyword = 1,
    foldexpr = 1,
    debug = 0,
  }
end

return M

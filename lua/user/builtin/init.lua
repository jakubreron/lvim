require "user.builtin.bufferline"
require "user.builtin.lualine"
require "user.builtin.telescope"
require "user.builtin.treesitter"
require "user.builtin.which-key"
require "user.builtin.lir"
require "user.builtin.nvimtree"

lvim.colorscheme = "dracula"
lvim.reload_config_on_save = false
lvim.format_on_save.enabled = false
-- lvim.format_on_save = {
--   enabled = true,
--   pattern = "*",
--   timeout = 1000,
-- }

lvim.builtin.bufferline.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.alpha.active = false
lvim.builtin.lir.active = false
lvim.builtin.indentlines.active = false

lvim.builtin.autopairs.active = true
lvim.builtin.dap.active = true

local cmp_mapping = require "cmp.config.mapping"
local luasnip = require("lvim.utils.modules").require_on_index "luasnip"
lvim.builtin.cmp.mapping["<Tab>"] = cmp_mapping(function(fallback)
  if luasnip.expand_or_locally_jumpable() then
    luasnip.expand_or_jump()
  else
    fallback()
  end
end, { "i", "s" })

require "user.builtin.bufferline"
require "user.builtin.lualine"
require "user.builtin.telescope"
require "user.builtin.treesitter"
require "user.builtin.which_key"
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

lvim.builtin.illuminate.active = false
lvim.builtin.autopairs.active = true
lvim.builtin.dap.active = true

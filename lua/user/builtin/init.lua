require "user.builtin.bufferline"
require "user.builtin.lualine"
require "user.builtin.telescope"
require "user.builtin.treesitter"
require "user.builtin.which-key"
require "user.builtin.lir"
require "user.builtin.nvimtree"

lvim.transparent_window = true
lvim.colorscheme = "catppuccin-mocha"
lvim.reload_config_on_save = true
lvim.format_on_save.enabled = false
-- lvim.format_on_save = {
--   enabled = true,
--   pattern = "*",
--   timeout = 1000,
-- }

if string.find(vim.fn.getcwd(), "work") ~= nil then
  lvim.builtin.project.patterns = { "package.json", "project.json" }
end

lvim.builtin.bufferline.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.alpha.active = false
lvim.builtin.lir.active = false
lvim.builtin.indentlines.active = false

lvim.builtin.autopairs.active = true
lvim.builtin.dap.active = true

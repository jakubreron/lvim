lvim.builtin.terminal.active = true -- needed for lazygit
lvim.builtin.breadcrumbs.active = true

lvim.builtin.illuminate.active = false -- word highlight
lvim.builtin.autopairs.active = false

lvim.builtin.bufferline.options.numbers = "buffer_id"
lvim.builtin.bufferline.options.always_show_bufferline = true

lvim.builtin.which_key.setup.plugins.marks = true
lvim.builtin.which_key.setup.plugins.registers = true

lvim.builtin.project.silent_chdir = false

local components = require "lvim.core.lualine.components"
local function packageinfo()
  return require("package-info").get_status()
end
lvim.builtin.lualine.sections.lualine_a = {
  components.mode, -- default from lvim
  packageinfo, -- added
}

-- TODO: remove phpdoc from ignored after they fix the upstream: https://github.com/nvim-treesitter/nvim-treesitter/issues/2837
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.ignore_install = { "phpdoc" }

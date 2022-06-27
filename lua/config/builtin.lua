lvim.builtin.notify.active = true
lvim.builtin.bufferline.options.numbers = "buffer_id"
-- lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = function(term)
  if term.direction == "horizontal" then
    return 15
  elseif term.direction == "vertical" then
    return vim.o.columns * 0.4
  end
end

local components = require "lvim.core.lualine.components"
components.filename = {
  "filename",
  path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
  color = {},
  cond = nil,
}

local function packageinfo()
  return require("package-info").get_status()
end

lvim.builtin.lualine.sections = {
  lualine_c = {
    components.diff,
    components.python_env,
    packageinfo,
  },
  -- lualine_z = { "location" }
}

lvim.builtin.lualine.inactive_sections.lualine_a = { components.filename }

-- default settings from the repo
-- TODO: remove phpdoc from ignored after they fix the upstream: https://github.com/nvim-treesitter/nvim-treesitter/issues/2837
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.ignore_install = { "phpdoc" }

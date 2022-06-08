-- lvim.builtin.notify.active = true

lvim.builtin.bufferline.options.numbers = "buffer_id"

lvim.builtin.lualine.options.globalstatus = true

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

-- TODO: enable these lines only for certain projects
-- detection patterns (custom nuxt modules fix)
-- lvim.builtin.project.active = false
-- lvim.builtin.project.detection_methods = { "pattern" }
-- lvim.builtin.project.patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile" }

lvim.builtin.treesitter.ensure_installed = "maintained"

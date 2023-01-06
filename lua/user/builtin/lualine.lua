local components = require "lvim.core.lualine.components"
local function package_info()
  return require("package-info").get_status()
end

local function obsession_status()
  return '%{ObsessionStatus("", "")}'
end

lvim.builtin.lualine.sections.lualine_c = {
  obsession_status,
  components.filename,
  components.diff,
  components.python_env,
  package_info,
}
lvim.builtin.lualine.inactive_sections.lualine_c = lvim.builtin.lualine.sections.lualine_c

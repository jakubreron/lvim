local components = require "lvim.core.lualine.components"
local function packageinfo()
  return require("package-info").get_status()
end

lvim.builtin.lualine.sections.lualine_c = {
  components.filename,
  components.diff,
  components.python_env,
  packageinfo,
}
lvim.builtin.lualine.inactive_sections.lualine_c = lvim.builtin.lualine.sections.lualine_c

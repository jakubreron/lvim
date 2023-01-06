local components = require "lvim.core.lualine.components"
local function package_info()
  return require("package-info").get_status()
end

local function obsession_status()
  local status = vim.api.nvim_call_function("ObsessionStatus", { "", "" })
  if status == nil or status == "" then
    return ""
  else
    return status
  end
end

lvim.builtin.lualine.sections.lualine_c = {
  obsession_status,
  components.filename,
  components.diff,
  components.python_env,
  package_info,
}
lvim.builtin.lualine.inactive_sections.lualine_c = lvim.builtin.lualine.sections.lualine_c

local components = require "lvim.core.lualine.components"
local function package_info()
  return require("package-info").get_status()
end

local obsession_status_icons = { "", "" }
lvim.builtin.lualine.sections.lualine_c = {
  {
    "",
    type = "stl",
    color = { fg = "#7fff00" },
    cond = function()
      local status = vim.api.nvim_call_function("ObsessionStatus", obsession_status_icons)
      return status == obsession_status_icons[1]
    end,
  },
  {
    "",
    type = "stl",
    color = { fg = "#ff6955" },
    cond = function()
      local status = vim.api.nvim_call_function("ObsessionStatus", obsession_status_icons)
      return status == obsession_status_icons[2] or status == nil or status == ""
    end,
  },
  components.filename,
  "harpoon2",
  components.diff,
  components.python_env,
  package_info,
}
lvim.builtin.lualine.inactive_sections.lualine_c = lvim.builtin.lualine.sections.lualine_c

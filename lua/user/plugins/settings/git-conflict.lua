local M = {}

M.config = function()
  local status_ok, git_conflict = pcall(require, "git-conflict")
  if not status_ok then
    return
  end

  git_conflict.setup {
    default_mappings = true,
    default_commands = false,
    disable_diagnostics = true,
    highlights = { -- They must have background color, otherwise the default color will be used
      incoming = "DiffText",
      current = "DiffAdd",
    },
  }
end

return M

local M = {}

M.config = function()
  local status_ok, git_conflict = pcall(require, "git-conflict")
  if not status_ok then
    return
  end

  git_conflict.setup {
    default_mappings = true, -- disable buffer local mapping created by this plugin
    default_commands = false, -- disable commands created by this plugin
    disable_diagnostics = true, -- This will disable the diagnostics in a buffer whilst it is conflicted
    highlights = { -- They must have background color, otherwise the default color will be used
      incoming = "DiffText",
      current = "DiffAdd",
    },
  }
end

return M


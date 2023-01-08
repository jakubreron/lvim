local M = {}
M.config = function()
  local status_ok, tabnine = pcall(require, "cmp_tabnine.config")
  if not status_ok then
    return
  end

  tabnine.setup {
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
  }
end

return M

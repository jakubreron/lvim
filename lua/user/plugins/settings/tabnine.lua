local M = {}

M.config = function()
  local status_ok, tabnine = pcall(require, "cmp_tabnine.config")
  if not status_ok then
    return
  end

  tabnine.setup {
    max_lines = 1000,
    max_num_results = 10,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = "..",
    ignored_file_types = {
      -- default is not to ignore
      -- uncomment to ignore in lua:
      -- lua = true
    },
    show_prediction_strength = true,
  }
end

return M

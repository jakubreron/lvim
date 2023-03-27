local M = {}

M.config = function()
  local crates_status_ok, crates = pcall(require, "crates")
  if not crates_status_ok then
    return
  end

  crates.setup {
    null_ls = {
      enabled = true,
      name = "crates.nvim",
    },
    popup = {
      border = "rounded",
    },
  }
end

return M

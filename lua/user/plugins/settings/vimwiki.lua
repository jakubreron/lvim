local M = {}

M.config = function()
  vim.g.vimwiki_list = {
    {
      path = vim.fn.expand "$VIMWIKI_DIR",
      syntax = "markdown",
      ext = ".md",
    },
  }
end

return M

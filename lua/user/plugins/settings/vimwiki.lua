local M = {}

-- TODO: add binding to navigate to vw since it's disabled before entering a markdown file
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

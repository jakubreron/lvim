local M = {
  l = {
    f = {
      name = "File",
      f = { "<cmd>lua require('lvim.lsp.utils').format()<cr>", "Format" },
      r = { "<cmd>TSToolsRenameFile<CR>", "Rename" },
      R = { "<cmd>TSToolsFileReferences<CR>", "References" },
    },
    i = {
      name = "Imports",
      o = { "<cmd>TSToolsOrganizeImports<CR>", "Organize" },
      s = { "<cmd>TSToolsSortImports<CR>", "Sort" },
      r = { "<cmd>TSToolsRemoveUnusedImports<CR>", "Remove unused" },
      a = { "<cmd>TSToolsAddMissingImports<CR>", "Add missing" },
    }, -- default is :LspInfo
    o = {
      name = "Organize",
      u = { "<cmd>TSToolsRemoveUnused<CR>", "Remove unused statements" },
      f = { "<cmd>TSToolsFixAll<CR>", "Fix all fixable errors" },
    }, -- [o]rganize
  },
}

vim.keymap.set("n", "gd", "<cmd>TSToolsGoToSourceDefinition<CR>", {
  desc = "Go definiton",
  buffer = vim.api.nvim_get_current_buf(),
})

return M

-- virtual text that shows a message along with the error
lvim.lsp.diagnostics.virtual_text = false

-- TODO: fix it properly after https://github.com/LunarVim/LunarVim/pull/2503
require("lvim.lsp.manager").setup("tailwindcss", {})
require("lvim.lsp.manager").setup("emmet_ls", {})
-- local allowed_servers = { "emmet_ls", "tailwindcss" }
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return not vim.tbl_contains(allowed_servers, server)
-- end, lvim.lsp.automatic_configuration.skipped_servers)


-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client, bufnr)
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end
  --Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  if client.name == "tsserver" or client.name == "jsonls" then
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
end

local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

local filetypes = {
  eslint = {
    "javascript",
    "javascriptreact",
    "vue",
    "typescript",
    "typescriptreact",
  },
  stylelint = {
    "css",
    "scss",
    "less",
    "sass",
  },
  prettier = {
    "html",
    "markdown",
    "yaml",
    "json",
  },
}

formatters.setup {
  { exe = "eslint_d", filetypes = filetypes.eslint },
  { exe = "stylelint", filetypes = filetypes.stylelint },
  { exe = "prettierd", filetypes = filetypes.prettier },
  { exe = "stylua", filetypes = { "lua" } },
}

linters.setup {
  { exe = "eslint_d", filetypes = filetypes.eslint },
  { exe = "stylelint", filetypes = filetypes.stylelint },
  { exe = "luacheck", filetypes = { "lua" } },
}

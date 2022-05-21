-- virtual text that shows a message along with the error
lvim.lsp.diagnostics.virtual_text = false

-- TODO: fix it properly after https://github.com/LunarVim/LunarVim/pull/2503
require("lvim.lsp.manager").setup("tailwindcss", {})
require("lvim.lsp.manager").setup("emmet_ls", {})
require("lvim.lsp.manager").setup("vuels", {})

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client, bufnr)
  --Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

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
  { command = "eslint_d", filetypes = filetypes.eslint },
  { command = "stylelint", filetypes = filetypes.stylelint },
  { command = "prettierd", filetypes = filetypes.prettier },
  { command = "stylua", filetypes = { "lua" } },
}

linters.setup {
  { command = "eslint_d", filetypes = filetypes.eslint },
  { command = "stylelint", filetypes = filetypes.stylelint },
  { command = "luacheck", filetypes = { "lua" } },
}

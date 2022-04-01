-- virtual text that shows a message along with the error
lvim.lsp.diagnostics.virtual_text = false

local allowed_servers = { "angularls", "emmet_ls", "tailwindcss" }
lvim.lsp.override = vim.tbl_filter(function(server)
  return not vim.tbl_contains(allowed_servers, server)
end, lvim.lsp.override)

-- enable vuels (vue 2)
lvim.lsp.override = vim.tbl_filter(function(server)
  return server ~= "vuels"
end, lvim.lsp.override)

-- disable volar (vue 3)
vim.list_extend(lvim.lsp.override, { "volar" })

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

require "user.lsp.linters-formatters"
require "user.lsp.languages.js-ts"

-- vim.diagnostic.config({ virtual_text = false })

-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client)
  if client.name == "tsserver" or client.name == "jsonls" then
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
  end
end

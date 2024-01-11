require "user.lsp.linters-formatters"
require "user.lsp.languages.js-ts"

vim.diagnostic.config { virtual_text = true }

-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client)
  if client.name == "tsserver" or client.name == "jsonls" then
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
  end
end

local lspconfig = require "lspconfig"
local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.lua_ls.setup {}
lspconfig.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript" },
  cmd = { "typescript-language-server", "--stdio" },
}

-- WARNING: emmet_ls for vue might insert html inside the script
lspconfig.emmet_ls.setup {
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
}

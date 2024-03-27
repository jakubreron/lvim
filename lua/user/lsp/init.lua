require "user.lsp.linters-formatters"
require "user.lsp.languages.js-ts"

vim.diagnostic.config { virtual_text = false }

lvim.lsp.on_attach_callback = function(client)
  if client.name == "jsonls" or client.name == "tsserver" or client.name == "typescript-tools" then
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
  end
end

local lspconfig = require "lspconfig"

lspconfig.jsonls.setup {}
lspconfig.lua_ls.setup {}
-- lspconfig.tsserver.setup {
--   filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript" },
--   cmd = { "typescript-language-server", "--stdio" },
-- }

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- lspconfig.emmet_ls.setup {
--   -- on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {
--     "css",
--     "eruby",
--     "html",
--     "javascript",
--     "javascriptreact",
--     "less",
--     "sass",
--     "scss",
--     "svelte",
--     "pug",
--     "typescriptreact",
--     "vue",
--   },
--   init_options = {
--     html = {
--       options = {
--         -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
--         ["bem.enabled"] = true,
--       },
--     },
--   },
-- }

lvim.lsp.diagnostics.virtual_text = false
lvim.builtin.cmp.experimental.ghost_text = false

-- TODO: fix it properly after https://github.com/LunarVim/LunarVim/pull/2503
require("lvim.lsp.manager").setup("emmet_ls", {})
-- require("lvim.lsp.manager").setup("angularls", {})
-- require("lvim.lsp.manager").setup("tailwindcss", {})
-- require("lvim.lsp.manager").setup("vuels", {})

-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client, bufnr)
  --Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  if client.name == "tsserver" or client.name == "jsonls" then
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
end

local path = require("null-ls.utils").path
local root_pattern = require("null-ls.utils").root_pattern
local nls_cache = require("null-ls.helpers").cache

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
  lua = {
    "lua",
  },
}

local shared_servers = {
  eslint = {
    command = "eslint_d",
    filetypes = filetypes.eslint,
  },
  stylelint = {
    command = "stylelint",
    filetypes = filetypes.stylelint,
    condition = function(utils)
      return utils.root_has_file "stylelint.config.js"
    end,
  },
  markdown = {
    command = "markdownlint",
    filetypes = { "markdown", "vimwiki" },
    cwd = function(params)
      return root_pattern ".markdownlintrc"(params.bufname)
    end,
  },
}

local formatters_servers = {
  stylua = { command = "stylua", filetypes = filetypes.lua },
  prettier = { command = "prettierd", filetypes = filetypes.prettier },
}

local linters_servers = {
  luacheck = {
    command = "luacheck",
    filetypes = filetypes.lua,
    cwd = nls_cache.by_bufnr(function(params)
      return root_pattern ".luacheckrc"(params.bufname)
    end),
    runtime_condition = nls_cache.by_bufnr(function(params)
      return path.exists(path.join(params.root, ".luacheckrc"))
    end),
  },
}

formatters.setup {
  shared_servers.eslint,
  shared_servers.stylelint,
  shared_servers.markdown,
  formatters_servers.stylua,
  formatters_servers.prettier,
}

linters.setup {
  shared_servers.eslint,
  shared_servers.stylelint,
  shared_servers.markdown,
  linters_servers.luacheck,
}

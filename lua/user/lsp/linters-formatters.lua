local path = require("null-ls.utils").path
local root_pattern = require("null-ls.utils").root_pattern
local nls_cache = require("null-ls.helpers").cache

local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

local shared_servers = {
  eslint = {
    command = "eslint_d",
    filetypes = {
      "javascript",
      "javascriptreact",
      "vue",
      "typescript",
      "typescriptreact",
    },
  },
  stylelint = {
    command = "stylelint",
    filetypes = {
      "css",
      "scss",
      "less",
      "sass",
    },
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

local formater_servers = {
  stylua = {
    command = "stylua",
    filetypes = { "lua" },
  },
  prettier = {
    command = "prettierd",
    filetypes = { "html", "markdown", "yaml", "json" },
  },
  rust = {
    command = "rustfmt",
    filetypes = { "rust" },
  },
}

local linter_servers = {
  luacheck = {
    command = "luacheck",
    filetypes = formater_servers.stylua.filetypes,
    cwd = nls_cache.by_bufnr(function(params)
      return root_pattern ".luacheckrc"(params.bufname)
    end),
    runtime_condition = nls_cache.by_bufnr(function(params)
      return path.exists(path.join(params.root, ".luacheckrc"))
    end),
  }
}

formatters.setup {
  shared_servers.eslint,
  shared_servers.stylelint,
  shared_servers.markdown,
  formater_servers.stylua,
  formater_servers.prettier,
  formater_servers.rust,
}

linters.setup {
  shared_servers.eslint,
  shared_servers.stylelint,
  shared_servers.markdown,
  linter_servers.luacheck,
}

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "emmet_ls" and server ~= "tflint"
end, lvim.lsp.automatic_configuration.skipped_servers)

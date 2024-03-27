lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.indent.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "tsx",
  "typescript",
  "javascript",
  "css",
  "scss",
  "html",
  "vue",
  "json",
  "yaml",
  "vim",
  "bash",
  "c",
  "lua",
  "markdown",
  "rust",
  "toml",
}

-- NOTE: uncomment when treesitter textobjects fixes their stuff
-- lvim.builtin.treesitter.textobjects = {
--   select = {
--     enable = true,
--     lookahead = true,
--     keymaps = {
--       ["af"] = "@function.outer",
--       ["if"] = "@function.inner",

--       ["ac"] = "@call.outer",
--       ["ic"] = "@call.inner",
--       ["aa"] = "@parameter.outer",
--       ["ia"] = "@parameter.inner",
--       ["al"] = "@loop.outer",
--       ["il"] = "@loop.inner",
--       ["ai"] = "@conditional.outer",
--       ["ii"] = "@conditional.inner",
--       ["a/"] = "@comment.outer",
--       ["i/"] = "@comment.inner",
--     },
--   },
--   move = {
--     enable = true,
--     set_jumps = true, -- whether to set jumps in the jumplist
--     goto_next_start = {
--       ["]m"] = "@function.outer",
--       ["]]"] = "@class.outer",
--     },
--     goto_next_end = {
--       ["]M"] = "@function.outer",
--       ["]["] = "@class.outer",
--     },
--     goto_previous_start = {
--       ["[m"] = "@function.outer",
--       ["[["] = "@class.outer",
--     },
--     goto_previous_end = {
--       ["[M"] = "@function.outer",
--       ["[]"] = "@class.outer",
--     },
--   },
-- }

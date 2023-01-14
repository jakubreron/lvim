lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.autotag.enable = true
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
}

lvim.builtin.treesitter.incremental_selection = {
  enable = true,
  keymaps = {
    init_selection = "<C-s>",
    node_incremental = "<C-s>",
    node_decremental = "<C-c>",
    scope_incremental = "<C-space>",
  },
}

lvim.builtin.treesitter.textobjects = {
  select = {
    enable = true,
    lookahead = true,
    keymaps = {
      ["af"] = "@function.outer",
      ["if"] = "@function.inner",
      ["ac"] = "@class.outer",
      ["ic"] = "@class.inner",
    },
  },
  move = {
    enable = true,
    set_jumps = true, -- whether to set jumps in the jumplist
    goto_next_start = {
      ["]m"] = "@function.outer",
      ["]]"] = "@class.outer",
    },
    goto_next_end = {
      ["]M"] = "@function.outer",
      ["]["] = "@class.outer",
    },
    goto_previous_start = {
      ["[m"] = "@function.outer",
      ["[["] = "@class.outer",
    },
    goto_previous_end = {
      ["[M"] = "@function.outer",
      ["[]"] = "@class.outer",
    },
  },
}

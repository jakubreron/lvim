lvim.plugins = {
  { "vimwiki/vimwiki" },
  { "AndrewRadev/splitjoin.vim" }, -- gJ, gS movements
  { "nvim-treesitter/nvim-treesitter-context" }, -- sticky scroll context
  { "nvim-treesitter/nvim-treesitter-textobjects" }, -- more movements (if, af, ic, ac, etc...)
  { "stevearc/dressing.nvim" }, -- better default nvim interfaces
  {
    "ThePrimeagen/harpoon",
    lazy = true,
  }, -- better file navigation since bufferline is disabled

  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" }, -- tmux navigation from within nvim

  { "tpope/vim-repeat" }, -- better "."
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-obsession" }, -- save the session
  { "tpope/vim-unimpaired" }, -- additional mappings

  -- {
  --   "szw/vim-maximizer",
  -- }, -- maximize current window

  {
    "nvim-neotest/neotest", -- run tests directly from the file
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "haydenmeade/neotest-jest",
    },
    config = function()
      require("user.plugins.settings.neotest").config()
    end,
    ft = {
      "javascript",
      "javascriptreact",
      "vue",
      "typescript",
      "typescriptreact",
    },
    lazy = true,
  },
  -- {
  --   "mxsdev/nvim-dap-vscode-js"
  -- },
  {
    "kevinhwang91/nvim-hlslens", -- TODO: find out how to highlight the current search without a plugin
    config = function()
      require("user.plugins.settings.hlslens").config()
    end,
  }, -- highlight search count
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua", -- highlight the hex / rgb colors
    config = function()
      require("user.plugins.settings.colorizer").config()
    end,
    ft = {
      "css",
      "scss",
      "html",
      "javascript",
    },
    lazy = true,
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("user.plugins.settings.git-conflict").config()
    end,
    lazy = true,
  }, -- easier conflicts
  {
    "andymass/vim-matchup", -- better "%"
    -- event = "CursorMoved",
  },
  {
    "windwp/nvim-spectre", -- search & replace throughout all the files (without vimgrepping)
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
    lazy = true,
  },
  {
    "vuki656/package-info.nvim", -- check if the package info is up to date
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("package-info").setup()
    end,
    event = "BufRead",
    ft = "json",
    lazy = true,
  },
  {
    "kevinhwang91/nvim-bqf", -- better quickfix window (preview, search & replace, etc...)
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup()
    end,
    lazy = true,
  },
  {
    "tzachar/cmp-tabnine", -- AI autocompletion
    config = function()
      require("user.plugins.settings.tabnine").config()
    end,
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    lazy = true,
  },
  -- {
  --   "Pocco81/auto-save.nvim",
  --   config = function()
  --     require("auto-save").setup {}
  --   end,
  -- },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension "live_grep_args"
    end,
    lazy = true,
  },
}

vim.g.matchup_matchparen_offscreen = { method = "popup" }

vim.g.vimwiki_list = {
  {
    path = vim.fn.expand "$VIMWIKI_DIR",
    syntax = "markdown",
    ext = ".md",
  },
}

-- remove unnecessary unimpaired mappings
vim.g.nremap = {
  ["[u"] = "",
  ["[uu"] = "",
  ["v_[u"] = "",

  ["]u"] = "",
  ["]uu"] = "",
  ["v_]u"] = "",

  ["[x"] = "",
  ["[xx"] = "",
  ["v_[x"] = "",

  ["]x"] = "",
  ["]xx"] = "",
  ["v_]x"] = "",

  ["[y"] = "",
  ["[yy"] = "",
  ["v_[y"] = "",
  ["[C"] = "",
  ["[CC"] = "",
  ["v_[C"] = "",

  ["]y"] = "",
  ["]yy"] = "",
  ["v_]y"] = "",
  ["]C"] = "",
  ["]CC"] = "",
  ["v_]C"] = "",
}

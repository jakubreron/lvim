lvim.plugins = {
  {
    "vimwiki/vimwiki",
  },
  {
    "AndrewRadev/splitjoin.vim",
  }, -- gJ, gS movements
  {
    "christoomey/vim-titlecase",
  }, -- "gz" movement to toggle the words case
  {
    "christoomey/vim-tmux-navigator",
  }, -- easier tmux navigation
  {
    "tiagovla/scope.nvim", -- better bufferline (sort buffers into tabs)
    config = function()
      require("scope").setup()
    end,
  },
  {
    "tpope/vim-repeat",
  }, -- better "."
  {
    "tpope/vim-sleuth",
  }, -- detect the relevant tabs / shifts
  {
    "tpope/vim-surround",
  }, -- surround movement
  {
    "tpope/vim-obsession",
  }, -- save the session
  {
    "tpope/vim-unimpaired",
  }, -- additional mappings
  {
    "nvim-treesitter/nvim-treesitter-context",
  }, -- sticky scroll context
  {
    "andymass/vim-matchup", -- better "%"
    requires = "leafOfTree/vim-vue-plugin", -- vue syntax highlighting and % fix
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "windwp/nvim-spectre", -- search & replace throughout all the files (without vimgrepping)
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "vuki656/package-info.nvim", -- check if the package info is up to date
    requires = "MunifTanjim/nui.nvim",
    config = function()
      require("package-info").setup()
    end,
  },
  {
    "kevinhwang91/nvim-bqf", -- better quickfix window (preview, search & replace, etc...)
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup()
    end,
  },
  {
    "windwp/nvim-ts-autotag", -- complete or replace the open & closing tags
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "tzachar/cmp-tabnine", -- AI autocompletion
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
      }
    end,
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {}
    end,
  },
}

vim.g.vimwiki_list = { {
  path = vim.fn.expand "$VIMWIKI_DIR",
  syntax = "markdown",
  ext = ".md",
} }

lvim.plugins = {
  { "vimwiki/vimwiki" },
  { "AndrewRadev/splitjoin.vim" },                               -- gJ, gS movements
  { "stevearc/dressing.nvim" },                                  -- better default nvim interfaces
  { "Mofiqul/dracula.nvim" },                                    -- theme
  { "folke/tokyonight.nvim" },                                   -- theme
  { "ThePrimeagen/harpoon",                       lazy = true }, -- better file navigation since bufferline is disabled

  { "nvim-treesitter/nvim-treesitter-context" },                 -- sticky scroll context
  { "nvim-treesitter/nvim-treesitter-textobjects" },             -- more movements (if, af, ic, ac, etc...)

  { "christoomey/vim-titlecase" },                               -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" },                          -- tmux navigation from within nvim

  { "tpope/vim-repeat" },                                        -- better "."
  { "tpope/vim-surround" },                                      -- surround movement
  { "tpope/vim-obsession" },                                     -- save the session
  { "tpope/vim-unimpaired" },                                    -- additional mappings

  { "szw/vim-maximizer" },                                       -- maximize current window

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
    event = "BufWinEnter *.spec.*",
    lazy = true,
  },
  -- {
  --   "mxsdev/nvim-dap-vscode-js"
  -- },
  {
    "petertriho/nvim-scrollbar",
    config = true,
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
  },                        -- easier conflicts
  {
    "andymass/vim-matchup", -- better "%"
    event = "CursorMoved",
  },
  {
    "windwp/nvim-spectre", -- search & replace throughout all the files (without vimgrepping)
    event = "BufRead",
    config = true,
    lazy = true,
  },
  {
    "vuki656/package-info.nvim", -- check if the package info is up to date
    dependencies = "MunifTanjim/nui.nvim",
    config = true,
    event = "BufWinEnter package.json",
    lazy = true,
  },
  {
    "kevinhwang91/nvim-bqf", -- better quickfix window (preview, search & replace, etc...)
    event = { "BufRead", "BufNew" },
    config = true,
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
  {
    "Pocco81/auto-save.nvim",
    config = true,
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      lvim.builtin.telescope.on_config_done = function(telescope)
        pcall(telescope.load_extension, "telescope")
      end
    end,
    lazy = true,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("user.plugins.settings.rust-tools").config()
    end,
    ft = "rust",
    lazy = true,
  },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("user.plugins.settings.crates").config()
    end,
    ft = "rust",
    lazy = true,
  },
  {
    "j-hui/fidget.nvim",
    config = true,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
  }
}

require "user.plugins.settings.global"

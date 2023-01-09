lvim.plugins = {
  {
    "vimwiki/vimwiki",
    config = function()
      require("user.plugins.settings.vimwiki").config()
    end,
    ft = "markdown",
  },
  { "AndrewRadev/splitjoin.vim" }, -- gJ, gS movements
  { "nvim-treesitter/nvim-treesitter-context" }, -- sticky scroll context
  { "nvim-treesitter/nvim-treesitter-textobjects" }, -- more movements (if, af, ic, ac, etc...)
  { "stevearc/dressing.nvim" }, -- better default nvim interfaces
  { "ThePrimeagen/harpoon" }, -- better file navigation since bufferline is disabled

  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" }, -- tmux navigation from within nvim

  { "tpope/vim-repeat" }, -- better "."
  -- { "tpope/vim-sleuth" }, -- detect the relevant tabs / shifts
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-obsession" }, -- save the session
  { "tpope/vim-unimpaired" }, -- additional mappings

  -- {
  --   "szw/vim-maximizer",
  -- }, -- maximize current window

  {
    "nvim-neotest/neotest", -- run tests directly from the file
    requires = {
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
  },
  {
    "akinsho/git-conflict.nvim",
    tag = "*",
    config = function()
      require("user.plugins.settings.git-conflict").config()
    end,
  }, -- easier conflicts
  {
    "andymass/vim-matchup", -- better "%"
    event = "CursorMoved",
    config = function()
      require("user.plugins.settings.matchup").config()
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
    event = "BufRead",
    ft = "json",
  },
  {
    "kevinhwang91/nvim-bqf", -- better quickfix window (preview, search & replace, etc...)
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup()
    end,
  },
  {
    "tzachar/cmp-tabnine", -- AI autocompletion
    config = function()
      require("user.plugins.settings.tabnine").config()
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
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension "live_grep_args"
    end,
  },
}

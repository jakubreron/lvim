lvim.plugins = {
  { "vimwiki/vimwiki" },
  { "AndrewRadev/splitjoin.vim" }, -- gJ, gS movements
  { "szw/vim-maximizer" }, -- maximize current window
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "stevearc/dressing.nvim" }, -- better default nvim interfaces
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     -- "rcarriga/nvim-notify",
  --   }
  -- },
  { "folke/todo-comments.nvim", config = true }, -- todo comments highlight
  { "ThePrimeagen/harpoon", lazy = true }, -- better file navigation since bufferline is disabled
  { "nvim-treesitter/nvim-treesitter-context" }, -- sticky scroll context
  -- { "nvim-treesitter/nvim-treesitter-textobjects" }, -- more movements (if, af, ic, ac, etc...)
  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" }, -- tmux navigation from within nvim
  { "tpope/vim-repeat" }, -- better "."
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-obsession" }, -- save the session
  { "tpope/vim-unimpaired" }, -- additional mappings
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
  --   "mxsdev/nvim-dap-vscode-js" -- debugger adapter
  -- },
  {
    "norcalli/nvim-colorizer.lua", -- highlight the hex / rgb colors
    config = function()
      require("user.plugins.settings.colorizer").config()
    end,
    ft = {
      "css",
      "scss",
    },
    lazy = true,
  },
  -- {
  --   "akinsho/git-conflict.nvim",
  --   version = "*",
  --   config = function()
  --     require("user.plugins.settings.git-conflict").config()
  --   end,
  -- }, -- easier conflicts
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
    "chentoast/marks.nvim",
    event = "BufReadPre",
    config = true,
  },
  -- {
  --   "tzachar/cmp-tabnine", -- AI autocompletion
  --   config = function()
  --     require("user.plugins.settings.tabnine").config()
  --   end,
  --   build = "./install.sh",
  --   dependencies = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  --   lazy = true,
  -- },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "b0o/incline.nvim",
    dependencies = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup {
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      }
    end,
  },

  -- {
  --   "simrat39/rust-tools.nvim",
  --   config = function()
  --     require("user.plugins.settings.rust-tools").config()
  --   end,
  --   ft = "rust",
  --   lazy = true,
  -- },
  -- {
  --   "saecki/crates.nvim",
  --   version = "v0.3.0",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require("user.plugins.settings.crates").config()
  --   end,
  --   ft = "rust",
  --   lazy = true,
  -- },
}

require "user.plugins.settings.global"

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
    "stevearc/dressing.nvim",
  }, -- better default nvim interfaces
  {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "haydenmeade/neotest-jest",
    }, -- run tests directly from the file
    require("neotest").setup {
      adapters = {
        require "neotest-jest" {
          -- ...
          -- jestCommand = "jest --watch ",
        },
      },
    },
  },
  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require("hlslens").setup()
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
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        -- css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        -- css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    tag = "*",
    config = function()
      require("git-conflict").setup {
        default_mappings = true, -- disable buffer local mapping created by this plugin
        default_commands = false, -- disable commands created by this plugin
        disable_diagnostics = true, -- This will disable the diagnostics in a buffer whilst it is conflicted
        highlights = { -- They must have background color, otherwise the default color will be used
          incoming = "DiffText",
          current = "DiffAdd",
        },
      }
    end,
  }, -- easier conflicts
  -- {
  --   "szw/vim-maximizer",
  -- }, -- maximize current window
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
  -- {
  --   "mxsdev/nvim-dap-vscode-js"
  -- },
}

require "user.plugins.settings.vimwiki"
---@diagnostic disable-next-line: different-requires
require "user.plugins.settings.hlslens"
require "user.plugins.settings.nvim-tree"

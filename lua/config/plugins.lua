vim.g.vimwiki_list = { { path = "~/Documents/vimwiki/", syntax = "markdown", ext = ".md" } }
vim.g["test#strategy"] = "dispatch" -- make test commands execute using dispatch.vim
vim.b["match_words"] = "<<<<<<<:=======:>>>>>>>" -- match git conflict markers with %

-- local lsp_signature_config = {
--   bind = true,
--   hint_enable = false, -- disable virtual text
--   hint_prefix = "", -- remove panda icon from virtual text
--   handler_opts = { border = "single" }, -- show current argument in the popup
-- }

lvim.plugins = {
  { "vimwiki/vimwiki" }, -- note taking plugin
  { "vim-test/vim-test" }, -- unit tests
  { "nvim-treesitter/nvim-treesitter-context" }, -- sticky scroll context
  { "AndrewRadev/splitjoin.vim" }, -- gJ, gS movements
  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" }, -- easier tmux navigation
  { "felipec/vim-sanegx", event = "BufRead" }, -- go to the url using gX
  {
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup()
    end,
  }, -- better bufferline (sort buffers into tabs)
  { "christianchiarulli/nvcode-color-schemes.vim" }, -- a bunch of generated thees
  { "tpope/vim-repeat" }, -- better "."
  { "tpope/vim-sleuth" }, -- detect the relevant tabs / shifts
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-jdaddy" }, -- additional json movements
  { "tpope/vim-dispatch" }, -- dispatch tests
  { "tpope/vim-obsession" }, -- save the session
  { "tpope/vim-unimpaired" }, -- additional mappings
  -- { "tpope/vim-vinegar" }, -- better netrw
  {
    "andymass/vim-matchup", -- better "%"
    requires = "leafOfTree/vim-vue-plugin", -- vue syntax highlighting and % fix
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "norcalli/nvim-colorizer.lua", -- highlight the hex / rgb colors
    config = function()
      require("plugin.colorizer").config()
    end,
  },
  {
    "windwp/nvim-spectre", -- search & replace throughout all the files (without vimgrepping)
    event = "BufRead",
    config = function()
      require("plugin.spectre").config()
    end,
  },
  {
    "vuki656/package-info.nvim", -- check if the package info is up to date
    requires = "MunifTanjim/nui.nvim",
    config = function()
      require("package-info").setup {
        {
          colors = {
            up_to_date = "#3C4048", -- Text color for up to date package virtual text
            outdated = "#6ec0fa", -- Text color for outdated package virtual text
          },
          icons = {
            enable = true, -- Whether to display icons
            style = {
              up_to_date = "|  ", -- Icon for up to date packages
              outdated = "|  ", -- Icon for outdated packages
            },
          },
          autostart = true, -- Whether to autostart when `package.json` is opened
        },
      }
    end,
    ft = "json",
  },
  {
    "kevinhwang91/nvim-bqf", -- better quickfix window (preview, search & replace, etc...)
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup {
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      }
    end,
  },
  {
    "folke/todo-comments.nvim", -- highlight the todo, hack, note, etc... comments
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  -- {
  --   "tzachar/cmp-tabnine", -- AI autocompletion
  --   config = function()
  --     local tabnine = require "cmp_tabnine.config"
  --     tabnine:setup {
  --       max_lines = 1000,
  --       max_num_results = 20,
  --       sort = true,
  --     }
  --   end,
  --   run = "./install.sh",
  --   requires = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  -- },
  -- {
  --   "windwp/nvim-ts-autotag", -- complete or replace the open & closing tags
  --   event = "InsertEnter",
  --   config = function()
  --     require("nvim-ts-autotag").setup()
  --   end,
  -- },
  -- WARNING: this plugin doesn't work as of 31.07.2022
  -- {
  --   "Pocco81/auto-save.nvim", -- autosave
  --   config = function()
  --     require("autosave").setup()
  --   end,
  -- },
  -- {
  --   "ray-x/lsp_signature.nvim", -- show function arguments as you type
  --   config = function()
  --     require("lsp_signature").setup(lsp_signature_config)
  --   end,
  --   event = "BufRead",
  -- },
  -- {
  --   "iamcco/markdown-preview.nvim", -- localhost markdown server
  --   run = "cd app && yarn install",
  --   ft = "markdown",
  -- },
  -- {
  --   "turbio/bracey.vim",
  --   cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  --   run = "npm install --prefix server",
  -- },
  -- {
  --   "ruifm/gitlinker.nvim", -- quick link to the git snippet
  --   event = "BufRead",
  --   config = function()
  --     require("plugin.gitlinker").config()
  --   end,
  -- },
}

-- HACK: requiring lsp_signature in packer config function doesn't work as of 18.05.2022
-- require("lsp_signature").setup(lsp_signature_config)

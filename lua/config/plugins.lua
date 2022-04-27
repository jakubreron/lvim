lvim.plugins = {
  -- { "ptzz/lf.vim" }, --
  -- { "voldikss/vim-floaterm" }, --

  { "vimwiki/vimwiki" }, -- note taking plugin
  { "szw/vim-maximizer" }, -- quickly maximize current window
  -- { "andweeb/presence.nvim" }, -- flex with VIM on the discord
  { "AndrewRadev/splitjoin.vim" }, -- gJ, gS movements
  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  { "christoomey/vim-tmux-navigator" }, -- easier tmux navigation

  -- TODO: don't uncomment, try out native nvim-dap instead
  -- { "puremourning/vimspector" }, -- inspect tool
  { "vim-test/vim-test" },

  -- themes
  { "folke/tokyonight.nvim" },

  -- { "editorconfig/editorconfig-vim" }, -- .editorconfig support

  { "tpope/vim-repeat" }, -- better "."
  { "tpope/vim-sleuth" }, -- detect the relevant tabs / shifts
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-jdaddy" }, -- additional json movements
  { "tpope/vim-dispatch" }, -- dispatch tests
  { "tpope/vim-obsession" }, -- save the session
  { "tpope/vim-unimpaired" }, -- additional mappings
  -- { "tpope/vim-eunuch" }, -- UNIX commands

  -- {
  --   "ThePrimeagen/git-worktree.nvim", -- git worktree integration
  --   config = function ()
  --     require("telescope").load_extension("git_worktree")
  --   end
  -- },
  -- {
  --   "ruifm/gitlinker.nvim", -- quick link to the git snippet
  --   event = "BufRead",
  --   config = function()
  --     require("plugin.gitlinker").config()
  --   end,
  -- },
  {
    "andymass/vim-matchup", -- better "%"
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "monaqa/dial.nvim", -- better C-a, C-x
    event = "BufRead",
    config = function()
      require("plugin.dial").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua", -- highlight the hex / rgb colors
    config = function()
      require("plugin.colorizer").config()
    end,
  },
  {
    "windwp/nvim-spectre", -- search & replace
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
  -- {
  --   "iamcco/markdown-preview.nvim", -- localhost markdown server
  --   run = "cd app && yarn install",
  --   ft = "markdown",
  -- },
  {
    "windwp/nvim-ts-autotag", -- complete or replace the open & closing tags
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave").setup()
    end,
  },
  {
    "folke/todo-comments.nvim", -- highlight the todo, hack, note, etc... comments
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "felipec/vim-sanegx", -- go to the url using gX
    event = "BufRead",
  },
  -- {
  --   "turbio/bracey.vim",
  --   cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  --   run = "npm install --prefix server",
  -- },
  {
    "tzachar/cmp-tabnine",
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
}

-- vimwiki
-- NOTE: remove syntax = "markdown" to use "[[]]" instead of "[]()"
-- TODO: maybe migrate to the method noted above (in order to be compatible with obsidian)
vim.g.vimwiki_list = { { path = "~/Documents/vimwiki/", syntax = "markdown", ext = ".md" } }

-- vimspector
-- vim.g.vimspector_enable_mappings = "HUMAN"

-- make test commands execute using dispatch.vim
vim.g["test#strategy"] = "dispatch"

-- match git conflict markers with %
vim.b["match_words"] =  '<<<<<<<:=======:>>>>>>>'

-- vimwiki
-- NOTE: remove syntax = "markdown" to use "[[]]" instead of "[]()"
-- TODO: maybe migrate later to the method noted above (in order to be compatible with obsidian)
vim.g.vimwiki_list = { { path = "~/Documents/vimwiki/", syntax = "markdown", ext = ".md" } }

-- vim.g.vimspector_enable_mappings = "HUMAN"

lvim.plugins = {
  { "szw/vim-maximizer" }, -- quickly maximize current window
  { "vimwiki/vimwiki" }, -- note taking plugin
  { "andweeb/presence.nvim" }, -- flex with VIM on the discord

  -- TODO: don't uncomment, try out native nvim-dap instead
  -- { "puremourning/vimspector" }, -- inspect tool

  -- themes
  { "rose-pine/neovim" },
  { "rebelot/kanagawa.nvim" },
  { "folke/tokyonight.nvim" },

  -- { "editorconfig/editorconfig-vim" }, -- .editorconfig support

  { "tpope/vim-repeat" }, -- better "."
  { "tpope/vim-sleuth" }, -- detect the relevant tabs / shifts
  { "tpope/vim-surround" }, -- surround movement
  { "tpope/vim-jdaddy" }, -- additional json movements

  -- {
  --   "ThePrimeagen/git-worktree.nvim", -- git worktree integration
  --   config = function ()
  --     require("telescope").load_extension("git_worktree")
  --   end
  -- },

  {
    "ruifm/gitlinker.nvim", -- quick link to the git snippet
    event = "BufRead",
    config = function()
      require("plugin.gitlinker").config()
    end,
  },
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
    "folke/trouble.nvim", -- diagnostics
    cmd = "TroubleToggle",
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
    "iamcco/markdown-preview.nvim", -- localhost markdown server
    run = "cd app && yarn install",
    ft = "markdown",
  },
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
  { "christoomey/vim-titlecase" }, -- "gz" movement to toggle the words case
  {
    "folke/persistence.nvim", -- save the last session
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
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

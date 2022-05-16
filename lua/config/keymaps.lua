lvim.keys = {
  -- insert_mode = {
  --
  -- },

  normal_mode = {
    ["Y"] = "y$",
    ["Q"] = "<cmd>BufferKill<cr>",

    ["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<cr>",

    ["]q"] = "<cmd>lua vim.diagnostic.goto_next()<cr>",
    ["[q"] = "<cmd>lua vim.diagnostic.goto_prev()<cr>",
  },
}

-- single which_keys
lvim.builtin.which_key.mappings["q"] = { "<cmd>qa<cr>", "Quit" }

lvim.builtin.which_key.mappings["T"] = nil -- treesitter
lvim.builtin.which_key.mappings["f"] = nil -- find file (already binded to sf)
lvim.builtin.which_key.mappings["/"] = nil -- comment
lvim.builtin.which_key.mappings["c"] = nil -- close buffer
lvim.builtin.which_key.mappings["w"] = nil -- save

-- lsp
lvim.builtin.which_key.mappings.l.j = nil -- next diagnostic
lvim.builtin.which_key.mappings.l.k = nil -- prev diagnostic
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <cr>", "Restart LSP" }

-- search
lvim.builtin.which_key.mappings.s.b = nil -- branches
lvim.builtin.which_key.mappings.s.M = nil -- man pages
lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.h = nil -- help
lvim.builtin.which_key.mappings.s.p = { "<cmd>Telescope projects<cr>", "Projects" }
lvim.builtin.which_key.mappings.s.f = { "<cmd>Telescope find_files hidden=true<cr>", "Find file" }
lvim.builtin.which_key.mappings.s.c = {
  "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>", -- default is colorscheme without preview
  "Colorscheme with Preview",
}
lvim.builtin.which_key.mappings.s.R = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" }
lvim.builtin.which_key.mappings.s.r = {
  name = "Replace",
  r = { ":%s@<c-r><c-w>@<c-r><c-w>@gc<c-f>$F@i", "Find and replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  a = { "<cmd>lua require('spectre').open()<cr>", "Replace anything" },
}

lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

-- buffers
lvim.builtin.which_key.mappings.b.b = nil -- buffer prev
lvim.builtin.which_key.mappings.b.e = nil -- pick buffer to close
lvim.builtin.which_key.mappings.b.h = nil -- close to left
lvim.builtin.which_key.mappings.b.l = nil -- close to right
lvim.builtin.which_key.mappings.b.j = nil -- buffer jump
lvim.builtin.which_key.mappings.b.f = nil -- buffer find
lvim.builtin.which_key.mappings.b.D = nil -- soft by directory
lvim.builtin.which_key.mappings.b.L = nil -- soft by language
lvim.builtin.which_key.mappings.b.c = { "<cmd>%bd!<cr>", "Close all" }

-- buffer / ortography
lvim.builtin.which_key.mappings["bo"] = {
  name = "Ortography",
  e = { "<cmd>setlocal spell! spelllang=en<cr>", "English" },
  p = { "<cmd>setlocal spell! spelllang=pl<cr>", "Polish" },
}

-- buffer / markdown
-- lvim.builtin.which_key.mappings["bm"] = { "<cmd>MarkdownPreviewToggle<cr>", "Markdown preview" }

-- buffer / server
-- lvim.builtin.which_key.mappings["bs"] = {
--   name = "Server",
--   s = { "<cmd>Bracey<cr>", "Start" },
--   k = { "<cmd>BraceyStop<cr>", "Kill" },
--   r = { "<cmd>BraceyReload<cr>", "Reload" },
--   f = { "<cmd>BraceyEval<cr>", "Force Reload" },
-- }

lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  n = { "<cmd>TestNearest<cr>", "Nearest" },
  f = { "<cmd>TestFile<cr>", "File" },
  s = { "<cmd>TestSuite<cr>", "Suite" },
  l = { "<cmd>TestLast<cr>", "Last" },
  v = { "<cmd>TestVisit<cr>", "Visit" },
}

-- todos
lvim.builtin.which_key.mappings["T"] = {
  name = "Todo",
  q = { "<cmd>TodoQuickFix<cr>", "Todo Quick Fix" },
  s = { "<cmd>TodoTelescope<cr>", "Todo Search" },
}

-- npm
lvim.builtin.which_key.mappings["n"] = {
  name = "NPM",
  f = { "<cmd>lua require('package-info').show({ force = true })<cr>", "Fetch" },
  h = { "<cmd>lua require('package-info').hide()<cr>", "Hide" },
  d = { "<cmd>lua require('package-info').delete()<cr>", "Delete" },
  u = { "<cmd>lua require('package-info').update()<cr>", "Update" },
  i = { "<cmd>lua require('package-info').install()<cr>", "Install" },
  r = { "<cmd>lua require('package-info').reinstall()<cr>", "Reinstall all" },
  c = { "<cmd>lua require('package-info').change_version()<cr>", "Change version" },
}

-- console
lvim.builtin.which_key.mappings.c = {
  name = "Console",
  v = { "<C-w>v<cmd>term<cr>", "Vertical" },
  s = { "<C-w>s<cmd>term<cr>", "Horizontal" },
}

lvim.keys = {
  normal_mode = {
    ["Q"] = ":BufferKill<CR>",

    ["<C-f>"] = ":silent !tmux neww tmux-sessionizer<CR>",

    ["]q"] = ":lua vim.diagnostic.goto_next()<CR>",
    ["[q"] = ":lua vim.diagnostic.goto_prev()<CR>",

    ["]c"] = ":lua require'gitsigns'.next_hunk()<CR>:lua require 'gitsigns'.preview_hunk()<CR>",
    ["[c"] = ":lua require'gitsigns'.prev_hunk()<CR>:lua require 'gitsigns'.preview_hunk()<CR>",

    ["yoe"] = ":set eventignore=all<CR>", -- quick toggle like in tpope/vim-unimpaired
  },

  visual_mode = {
    ["<leader>p"] = '"_dP',
  },
}

lvim.builtin.which_key.mappings["q"] = { ":qa<CR>", "Quit" }
-- lvim.builtin.which_key.mappings["e"] = { "<cmd>Ex<CR>", "Explorer" }

lvim.builtin.which_key.mappings["T"] = nil -- treesitter
lvim.builtin.which_key.mappings["f"] = nil -- find file (already binded to sf)
lvim.builtin.which_key.mappings["/"] = nil -- comment
lvim.builtin.which_key.mappings["c"] = nil -- close buffer
lvim.builtin.which_key.mappings["w"] = nil -- save

-- git
lvim.builtin.which_key.mappings.g.j = nil -- next change
lvim.builtin.which_key.mappings.g.k = nil -- next change

-- lsp
lvim.builtin.which_key.mappings.l.j = nil -- next diagnostic
lvim.builtin.which_key.mappings.l.k = nil -- prev diagnostic
lvim.builtin.which_key.mappings["l_"] = { ":LspRestart <CR>", "Restart LSP" }

-- search
lvim.builtin.which_key.mappings.s.b = nil -- branches
lvim.builtin.which_key.mappings.s.M = nil -- man pages
lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.h = nil -- help
lvim.builtin.which_key.mappings.s.p = { ":Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings.s.f = { ":Telescope find_files hidden=true<CR>", "Find file" }
lvim.builtin.which_key.mappings.s.c = {
  ":lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<CR>", -- default is colorscheme without preview
  "Colorscheme with Preview",
}
lvim.builtin.which_key.mappings.s.R = { ":Telescope oldfiles<CR>", "Open Recent File" }
lvim.builtin.which_key.mappings.s.r = {
  name = "Replace",
  r = { ":%s@<c-r><c-w>@<c-r><c-w>@gc<c-f>$F@i", "Find and replace" },
  w = { ":lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
  a = { ":lua require('spectre').open()<CR>", "Replace anything" },
}

-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
-- end

-- buffers
lvim.builtin.which_key.mappings.b.b = nil -- buffer prev
lvim.builtin.which_key.mappings.b.n = nil -- buffer prev
lvim.builtin.which_key.mappings.b.e = nil -- pick buffer to close
lvim.builtin.which_key.mappings.b.h = nil -- close to left
lvim.builtin.which_key.mappings.b.l = nil -- close to right
lvim.builtin.which_key.mappings.b.j = nil -- buffer jump
-- lvim.builtin.which_key.mappings.b.f = nil -- buffer find
lvim.builtin.which_key.mappings.b.D = nil -- soft by directory
lvim.builtin.which_key.mappings.b.L = nil -- soft by language
lvim.builtin.which_key.mappings.b.c = { ":%bd!<CR>", "Close all" }

-- buffer / ortography
lvim.builtin.which_key.mappings["bo"] = {
  name = "Ortography",
  e = { ":setlocal spell! spelllang=en<CR>", "English" },
  p = { ":setlocal spell! spelllang=pl<CR>", "Polish" },
}

-- buffer / markdown
-- lvim.builtin.which_key.mappings["bm"] = { ":MarkdownPreviewToggle<CR>", "Markdown preview" }

-- buffer / server
-- lvim.builtin.which_key.mappings["bs"] = {
--   name = "Server",
--   s = { ":Bracey<CR>", "Start" },
--   k = { ":BraceyStop<CR>", "Kill" },
--   r = { ":BraceyReload<CR>", "Reload" },
--   f = { ":BraceyEval<CR>", "Force Reload" },
-- }

lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  n = { ":TestNearest<CR>", "Nearest" },
  f = { ":TestFile<CR>", "File" },
  s = { ":TestSuite<CR>", "Suite" },
  l = { ":TestLast<CR>", "Last" },
  v = { ":TestVisit<CR>", "Visit" },
}

-- todos
lvim.builtin.which_key.mappings["T"] = {
  name = "Todo",
  q = { ":TodoQuickFix<CR>", "Todo Quick Fix" },
  s = { ":TodoTelescope<CR>", "Todo Search" },
}

-- npm
lvim.builtin.which_key.mappings["n"] = {
  name = "NPM",
  f = { ":lua require('package-info').show({ force = true })<CR>", "Fetch" },
  h = { ":lua require('package-info').hide()<CR>", "Hide" },
  d = { ":lua require('package-info').delete()<CR>", "Delete" },
  u = { ":lua require('package-info').update()<CR>", "Update" },
  i = { ":lua require('package-info').install()<CR>", "Install" },
  r = { ":lua require('package-info').reinstall()<CR>", "Reinstall all" },
  c = { ":lua require('package-info').change_version()<CR>", "Change version" },
}

-- console
lvim.builtin.which_key.mappings.c = {
  name = "Console",
  v = { "<C-w>v:term<CR>", "Vertical" },
  s = { "<C-w>s:term<CR>", "Horizontal" },
  d = { "Oconsole.log('%cdebugging', 'font-size: 24px; color: skyblue;');<ESC>", "Insert a debugging log" },
  p = {
    "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c<ESC>pi call took ${t1 - t0} miliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
    "Insert a performance log",
  },
}

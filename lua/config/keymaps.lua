lvim.keys = {
  normal_mode = {
    ["Q"] = "<cmd>BufferKill<CR>",

    ["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<CR>",
    ["<C-c>"] = "<cmd>%y+<CR>", -- copy whole file
    ["<C-b>"] = "mmggVG<Plug>(comment_toggle_linewise_visual)`m", -- comment whole file and preserve the cursor position with mark hack

    ["]q"] = "<cmd>lua vim.diagnostic.goto_next()<CR>",
    ["[q"] = "<cmd>lua vim.diagnostic.goto_prev()<CR>",

    ["]c"] = "<cmd>lua require'gitsigns'.next_hunk()<CR>",
    ["[c"] = "<cmd>lua require'gitsigns'.prev_hunk()<CR>",

    ["yoe"] = "<cmd>set eventignore=all<CR>", -- quick toggle like in tpope/vim-unimpaired
    ["yoss"] = "<cmd>setlocal spell!<CR>", -- quick spelling toggle adjustements
    ["yose"] = "<cmd>setlocal spell! spelllang=en<CR>", -- English
    ["yosp"] = "<cmd>setlocal spell! spelllang=pl<CR>", -- Polish
  },

  visual_mode = {
    ["<leader>p"] = '"_dP',
  },
}

lvim.builtin.which_key.mappings["q"] = { "<cmd>qa!<CR>", "Quit" }
-- lvim.builtin.which_key.mappings["e"] = { "<cmd>Ex<CR>", "Explorer" }

-- lvim.builtin.which_key.mappings["f"] = { "<cmd>lua require('lf').start()<CR>", "Lf" } -- find file (already bind to "sf")
lvim.builtin.which_key.mappings["f"] = nil -- find file (already bind to "sf")
lvim.builtin.which_key.mappings["T"] = nil -- treesitter
lvim.builtin.which_key.mappings["/"] = nil -- comment
lvim.builtin.which_key.mappings["c"] = nil -- close buffer
lvim.builtin.which_key.mappings["w"] = nil -- save

-- git
lvim.builtin.which_key.mappings.g.j = nil -- next change
lvim.builtin.which_key.mappings.g.k = nil -- next change

-- lsp
lvim.builtin.which_key.mappings.l.j = nil -- next diagnostic
lvim.builtin.which_key.mappings.l.k = nil -- prev diagnostic
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <CR>", "Restart LSP" }

-- search
lvim.builtin.which_key.mappings.s.b = nil -- branches
lvim.builtin.which_key.mappings.s.M = nil -- man pages
lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.H = nil -- highlight groups
lvim.builtin.which_key.mappings.s.k = nil -- keymaps
lvim.builtin.which_key.mappings.s.p = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings.s.b = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings.s.c = {
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
  "Colorscheme",
}
lvim.builtin.which_key.mappings.s.r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" }
lvim.builtin.which_key.mappings.s.s = {
  name = "Replace",
  r = { "<cmd>%s@<c-r><c-w>@<c-r><c-w>@gc<c-f>$F@i<CR>", "Find and replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
  a = { "<cmd>lua require('spectre').open()<CR>", "Replace anything" },
}

-- buffers
lvim.builtin.which_key.mappings.b.b = nil -- buffer prev
lvim.builtin.which_key.mappings.b.n = nil -- buffer prev
lvim.builtin.which_key.mappings.b.e = nil -- pick buffer to close
lvim.builtin.which_key.mappings.b.h = nil -- close to left
lvim.builtin.which_key.mappings.b.l = nil -- close to right
lvim.builtin.which_key.mappings.b.j = nil -- buffer jump
lvim.builtin.which_key.mappings.b.f = nil -- buffer find
lvim.builtin.which_key.mappings.b.D = nil -- soft by directory
lvim.builtin.which_key.mappings.b.L = nil -- soft by language
lvim.builtin.which_key.mappings.b.c = { "<cmd>%bd | e#<CR>", "Close all except the current one" }
lvim.builtin.which_key.mappings.b.u = { "<cmd>UndotreeToggle<CR>", "Undotree Toggle" }

-- todos
lvim.builtin.which_key.mappings["T"] = {
  name = "Todo",
  q = { "<cmd>TodoQuickFix<CR>", "Todo Quick Fix" },
  s = { "<cmd>TodoTelescope<CR>", "Todo Search" },
}

-- npm
lvim.builtin.which_key.mappings["n"] = {
  name = "NPM",
  f = { "<cmd>lua require('package-info').show({ force = true })<CR>", "Fetch" },
  h = { "<cmd>lua require('package-info').hide()<CR>", "Hide" },
  d = { "<cmd>lua require('package-info').delete()<CR>", "Delete" },
  u = { "<cmd>lua require('package-info').update()<CR>", "Update" },
  i = { "<cmd>lua require('package-info').install()<CR>", "Install" },
  r = { "<cmd>lua require('package-info').reinstall()<CR>", "Reinstall all" },
  c = { "<cmd>lua require('package-info').change_version()<CR>", "Change version" },
}

-- console
lvim.builtin.which_key.mappings.c = {
  name = "Console",
  v = { "<C-w>v:term<CR>", "Vertical" },
  s = { "<C-w>s:term<CR>", "Horizontal" },
  d = { "Oconsole.log(`%c`, 'font-size: 24px; color: skyblue;');<ESC>02fca ", "Insert a debugging log" },
  p = {
    "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
    "Insert a performance log",
  },
}

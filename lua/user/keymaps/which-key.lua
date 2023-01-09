lvim.builtin.which_key.mappings.f = nil -- git/project files
lvim.builtin.which_key.mappings.T = nil -- treesitter
lvim.builtin.which_key.mappings.c = nil -- close buffer
lvim.builtin.which_key.mappings.w = nil -- save
lvim.builtin.which_key.mappings.q = { "<cmd>qa!<CR>", "Quit all" }

lvim.builtin.which_key.mappings.l.j = nil
lvim.builtin.which_key.mappings.l.k = nil
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <CR>", "Restart" }
lvim.builtin.which_key.mappings.l.n = {
  name = "NPM",
  f = { "<cmd>lua require('package-info').show({ force = true })<CR>", "Fetch" },
  h = { "<cmd>lua require('package-info').hide()<CR>", "Hide" },
  d = { "<cmd>lua require('package-info').delete()<CR>", "Delete" },
  u = { "<cmd>lua require('package-info').update()<CR>", "Update" },
  i = { "<cmd>lua require('package-info').install()<CR>", "Install" },
  r = { "<cmd>lua require('package-info').reinstall()<CR>", "Reinstall all" },
  c = { "<cmd>lua require('package-info').change_version()<CR>", "Change version" },
}

lvim.builtin.which_key.mappings.s.M = nil -- man pages
lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.H = nil -- highlight groups
lvim.builtin.which_key.mappings.s.k = nil -- keymaps
lvim.builtin.which_key.mappings.s.t = {
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  "Text",
} -- extended ripgrep search
lvim.builtin.which_key.mappings.s.p = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings.s.b = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings.s.c = {
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
  "Colorscheme",
}
lvim.builtin.which_key.mappings.s.r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" }
lvim.builtin.which_key.mappings.s.g = {
  require("lvim.core.telescope.custom-finders").find_project_files,
  "Git File",
}

lvim.builtin.which_key.mappings["/"] = {
  name = "Replace",
  ["/"] = { "<cmd>lua require('spectre').open()<CR>", "Replace All" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
}

lvim.builtin.which_key.mappings.b.b = nil -- buffer prev
lvim.builtin.which_key.mappings.b.n = nil -- buffer prev
lvim.builtin.which_key.mappings.b.e = nil -- pick buffer to close
lvim.builtin.which_key.mappings.b.h = nil -- close to left
lvim.builtin.which_key.mappings.b.l = nil -- close to right
lvim.builtin.which_key.mappings.b.j = nil -- buffer jump
lvim.builtin.which_key.mappings.b.f = nil -- buffer find
lvim.builtin.which_key.mappings.b.D = nil -- soft by directory
lvim.builtin.which_key.mappings.b.L = nil -- sort by language
lvim.builtin.which_key.mappings.b.W = nil -- save without formatting
lvim.builtin.which_key.mappings.b.c = { "<cmd>BufferKill<CR>", "Close" }

lvim.builtin.which_key.mappings.g.j = nil
lvim.builtin.which_key.mappings.g.k = nil

lvim.builtin.which_key.mappings.c = {
  name = "Console",
  v = { "<C-w>v:term<CR>", "Vertical" },
  s = { "<C-w>s:term<CR>", "Horizontal" },
  d = { "Oconsole.log('%c', 'font-size: 24px; color: skyblue;');<ESC>02fca ", "Insert a debugging log" },
  p = {
    "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
    "Insert a performance log",
  },
}

lvim.builtin.which_key.mappings.t = {
  name = "Tab",
  n = { "<cmd>tabnew<CR>", "New" },
  c = { "<cmd>tabclose<CR>", "Close" },
  o = { "<cmd>tabonly<CR>", "Only" },
  m = { ":tabmove", "Move" },
  e = { ":tabedit <C-r>=expand('%:p:h')<cr>/", "Edit" },
}

lvim.builtin.which_key.mappings.o = {
  name = "Obsession",
  t = { "<cmd>Obsession<CR>", "Track" },
  r = { "<cmd>source Session.vim<CR>", "Restore" },
}

-- lvim.builtin.which_key.mappings.T = {
--   name = "Tests",
--   r = { "<cmd>require('neotest').run.run({strategy = 'dap'})<CR>", "Run" },
-- }

local harpoon_ui = require "harpoon.ui"

lvim.builtin.which_key.mappings["1"] = {
  function()
    harpoon_ui.nav_file(1)
  end,
  "Mark 1",
}
lvim.builtin.which_key.mappings["2"] = {
  function()
    harpoon_ui.nav_file(2)
  end,
  "Mark 2",
}
lvim.builtin.which_key.mappings["3"] = {
  function()
    harpoon_ui.nav_file(3)
  end,
  "Mark 3",
}
lvim.builtin.which_key.mappings["4"] = {
  function()
    harpoon_ui.nav_file(4)
  end,
  "Mark 4",
}

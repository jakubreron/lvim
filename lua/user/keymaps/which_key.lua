lvim.builtin.which_key.mappings["d"] = { "<cmd>cd %:p:h<cr><cmd>pwd<cr>", "Change Directory" }
lvim.builtin.which_key.mappings["q"] = { "<cmd>qa!<CR>", "Quit" } -- force quit all
lvim.builtin.which_key.mappings["tn"] = { "<cmd>tabnew<CR>", "New" }
lvim.builtin.which_key.mappings["tc"] = { "<cmd>tabclose<CR>", "Close" }
lvim.builtin.which_key.mappings["to"] = { "<cmd>tabonly<CR>", "Only" }
lvim.builtin.which_key.mappings["tm"] = { ":tabmove", "Move" }
lvim.builtin.which_key.mappings["te"] = { ":tabedit <C-r>=expand('%:p:h')<cr>/", "Edit" }

lvim.builtin.which_key.mappings["f"] = nil -- find file (already bound to "sf")
lvim.builtin.which_key.mappings["T"] = nil -- treesitter (not useful)
lvim.builtin.which_key.mappings["/"] = nil -- comment (gcc)
lvim.builtin.which_key.mappings["c"] = nil -- close buffer (Q)
lvim.builtin.which_key.mappings["w"] = nil -- save (not useful becauseo f autosave)

-- git
lvim.builtin.which_key.mappings.g.j = nil -- next change (]c)
lvim.builtin.which_key.mappings.g.k = nil -- prev change ([c)

-- lsp
lvim.builtin.which_key.mappings.l.j = nil -- next diagnostic (]q)
lvim.builtin.which_key.mappings.l.k = nil -- prev diagnostic [[q]]
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <CR>", "Restart LSP" }

-- search
lvim.builtin.which_key.mappings.s.b = nil -- branches (not useful)
lvim.builtin.which_key.mappings.s.M = nil -- man pages (not useful)
lvim.builtin.which_key.mappings.s.C = nil -- commands (not useful)
lvim.builtin.which_key.mappings.s.R = nil -- registers (not useful)
lvim.builtin.which_key.mappings.s.H = nil -- highlight groups (not useful)
lvim.builtin.which_key.mappings.s.k = nil -- keymaps (not useful)
lvim.builtin.which_key.mappings.s.p = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings.s.b = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings.s.c = {
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
  "Colorscheme",
}
lvim.builtin.which_key.mappings.s.r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" }
lvim.builtin.which_key.mappings["/"] = {
  name = "Replace",
  s = { "<cmd>lua require('spectre').open()<CR>", "Replace All" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
}

-- buffers
lvim.builtin.which_key.mappings.b.b = nil -- buffer prev (]b)
lvim.builtin.which_key.mappings.b.n = nil -- buffer prev ([b)
lvim.builtin.which_key.mappings.b.e = nil -- pick buffer to close (:bd number)
lvim.builtin.which_key.mappings.b.h = nil -- close to left (not useful)
lvim.builtin.which_key.mappings.b.l = nil -- close to right (not useful)
lvim.builtin.which_key.mappings.b.j = nil -- buffer jump (:b id_or_name)
lvim.builtin.which_key.mappings.b.f = nil -- buffer find (:b id_or_name)
lvim.builtin.which_key.mappings.b.D = nil -- soft by directory (not useful)
lvim.builtin.which_key.mappings.b.L = nil -- soft by language (not useful)

-- lunarvim
lvim.builtin.which_key.mappings.L.n = nil -- notifications
lvim.builtin.which_key.mappings.L.l = nil -- logs

-- npm
lvim.builtin.which_key.mappings["n"] = {
  name = "Node",
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
  d = { "Oconsole.log('%c', 'font-size: 24px; color: skyblue;');<ESC>02fca ", "Insert a debugging log" },
  p = {
    "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
    "Insert a performance log",
  },
}

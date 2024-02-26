lvim.builtin.which_key.mappings.f = nil -- git/project files
lvim.builtin.which_key.mappings.T = nil -- treesitter
lvim.builtin.which_key.mappings.c = nil -- close buffer
lvim.builtin.which_key.mappings.h = nil -- nohighlight (already bound to esc)
lvim.builtin.which_key.mappings.q = nil -- no point, we have ZZ, ZQ
lvim.builtin.which_key.mappings[" "] = { "<cmd>MaximizerToggle!<CR>", "Maximize" }

lvim.builtin.which_key.mappings.l.j = nil
lvim.builtin.which_key.mappings.l.k = nil
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <CR>", "Restart" }
lvim.builtin.which_key.mappings.l.I = nil
lvim.builtin.which_key.mappings.l.m = { "<cmd>Mason<CR>", "Mason Info" }

lvim.builtin.which_key.mappings.s.M = nil -- man pages
-- lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.H = nil -- highlight groups
lvim.builtin.which_key.mappings.s.k = nil -- keymaps

lvim.builtin.which_key.mappings.s.t = {
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  "Text",
} -- extended ripgrep search
lvim.builtin.which_key.mappings.s.w = { "<cmd>Telescope grep_string<CR>", "Word under cursor" }
lvim.builtin.which_key.mappings.s.h = { "<cmd>Telescope search_history<CR>", "History" }

lvim.builtin.which_key.mappings.s.p = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings.s.b = { "<cmd>Telescope buffers<CR>", "Buffers" }
lvim.builtin.which_key.mappings.s.c = {
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<CR>",
  "Colorscheme",
}
lvim.builtin.which_key.mappings.s.r = { "<cmd>Telescope oldfiles<CR>", "Recent File" }
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
lvim.builtin.which_key.mappings.b.W = nil -- write without formatting
lvim.builtin.which_key.mappings.b.c = { "<cmd>BufferKill<CR>", "Close" }

lvim.builtin.which_key.mappings.p.r = { "<cmd>Lazy restore<cr>", "Restore" }

lvim.builtin.which_key.mappings.g.j = nil -- jump change up
lvim.builtin.which_key.mappings.g.k = nil -- jump change down
lvim.builtin.which_key.mappings.g.b = nil -- checkout branch
lvim.builtin.which_key.mappings.g.c = { -- checkout commit by default
  "<cmd>Telescope git_bcommits<CR>",
  "Checkout commit(for current file)",
}
lvim.builtin.which_key.mappings.g.C = {
  "<cmd>GitConflictListQf<CR>",
  "Conflicts",
}

lvim.builtin.which_key.mappings.c = {
  name = "Console",
  s = { "<C-w>s:term<CR>", "Split Horizontal" },
  v = { "<C-w>v:term<CR>", "Split Vertical" },
  t = { "<cmd>tabnew<CR><cmd>term<CR><cmd>setlocal nonumber norelativenumber<CR>", "New Tab" },
  n = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "New Tmux Session" },
}

lvim.builtin.which_key.mappings.t = {
  name = "Tab",
  n = { "<cmd>tabnew<CR>", "New" },
  c = { "<cmd>tabclose<CR>", "Close" },
  o = { "<cmd>tabonly<CR>", "Only" },
  m = { ":tabmove", "Move", silent = false },
  e = { ":tabedit <C-r>=expand('%:p:h')<CR>/", "Edit", silent = false },
}

lvim.builtin.which_key.mappings.o = {
  name = "Obsession",
  t = { "<cmd>Obsession<CR>", "Track Session.vim" },
  T = { ":Obsession Session-.vim<LEFT><LEFT><LEFT><LEFT>", "Track Custom Session" },
  r = { "<cmd>source Session.vim<CR>", "Restore Session.vim" },
  R = { ":source Session-", "Restore Custom Session" },
}

local harpoon_ui = require "harpoon.ui"

for i = 1, 6 do
  lvim.builtin.which_key.mappings[tostring(i)] = {
    function()
      harpoon_ui.nav_file(i)
    end,
    "Mark " .. i,
  }
end

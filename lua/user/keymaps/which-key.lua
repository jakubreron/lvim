lvim.builtin.which_key.mappings.f = nil -- git/project files
lvim.builtin.which_key.mappings.T = nil -- treesitter
lvim.builtin.which_key.mappings.c = nil -- close buffer
lvim.builtin.which_key.mappings.q = { "<cmd>qa!<CR>", "Quit all" }
lvim.builtin.which_key.mappings[" "] = { "<cmd>MaximizerToggle!<CR>", "Maximize" }

lvim.builtin.which_key.mappings.l.j = nil
lvim.builtin.which_key.mappings.l.k = nil
lvim.builtin.which_key.mappings["l_"] = { "<cmd>LspRestart <CR>", "Restart" }

lvim.builtin.which_key.mappings.s.M = nil -- man pages
-- lvim.builtin.which_key.mappings.s.C = nil -- commands
lvim.builtin.which_key.mappings.s.R = nil -- registers
lvim.builtin.which_key.mappings.s.H = nil -- highlight groups
-- lvim.builtin.which_key.mappings.s.k = nil -- keymaps
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

lvim.builtin.which_key.mappings.g.j = nil -- jump change up
lvim.builtin.which_key.mappings.g.k = nil -- jump change down
lvim.builtin.which_key.mappings.g.b = nil -- checkout branch
lvim.builtin.which_key.mappings.g.c = { -- checkout commit by default
  "<cmd>Telescope git_bcommits<cr>",
  "Checkout commit(for current file)",
}
lvim.builtin.which_key.mappings.g.C = {
  "<cmd>GitConflictListQf<cr>",
  "Conflicts",
}

local console_log = "console.log('%c', 'font-size: 24px; color: skyblue;');<ESC>02fca "
local console_debug = "console.debug();<ESC>0f(a"
lvim.builtin.which_key.mappings.c = {
  name = "Console",
  s = { "<C-w>s:term<CR>", "Split Horizontal" },
  v = { "<C-w>v:term<CR>", "Split Vertical" },
  n = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "New Tmux Session" },
  D = { "O" .. console_debug, "Jest-compatible console.debug above" },
  d = { "o" .. console_debug, "Jest-compatible console.debug below" },
  L = { "O" .. console_log, "Styled console.log above" },
  l = { "o" .. console_log, "Styled console.log below" },
  p = {
    "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
    "Performance console.log",
  },
}

lvim.builtin.which_key.mappings.t = {
  name = "Tab",
  n = { "<cmd>tabnew<CR>", "New" },
  c = { "<cmd>tabclose<CR>", "Close" },
  o = { "<cmd>tabonly<CR>", "Only" },
  m = { ":tabmove", "Move", silent = false },
  e = { ":tabedit <C-r>=expand('%:p:h')<cr>/", "Edit", silent = false },
}

lvim.builtin.which_key.mappings.o = {
  name = "Obsession",
  t = { "<cmd>Obsession<CR>", "Track" },
  r = { "<cmd>source Session.vim<CR>", "Restore" },
}

lvim.builtin.which_key.mappings.u = {
  name = "Unit Tests",
  r = { "<cmd>lua require('neotest').run.run()<CR>", "Run Nearest" },
  f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run File" },
  s = { "<cmd>lua require('neotest').run.stop()<CR>", "Stop" },
  t = { "<cmd>lua require('neotest').summary.toggle()<CR>", "Summary Tree" },
  a = { "<cmd>lua require('neotest').run.attach()<CR>", "Attach" },
  p = { "<cmd>lua require('neotest').output_panel.toggle()<CR>", "Panel Toggle" },
  o = { "<cmd>lua require('neotest').output.open({ enter = true })<CR>", "Output" },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Rust",
  r = { "<cmd>RustRunnables<Cr>", "Runnables" },
  t = { "<cmd>lua _CARGO_TEST()<cr>", "Cargo Test" },
  m = { "<cmd>RustExpandMacro<Cr>", "Expand Macro" },
  c = { "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
  p = { "<cmd>RustParentModule<Cr>", "Parent Module" },
  d = { "<cmd>RustDebuggables<Cr>", "Debuggables" },
  v = { "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
  R = {
    "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
    "Reload Workspace",
  },
  o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
  y = { "<cmd>lua require'crates'.open_repository()<cr>", "[crates] open repository" },
  P = { "<cmd>lua require'crates'.show_popup()<cr>", "[crates] show popup" },
  i = { "<cmd>lua require'crates'.show_crate_popup()<cr>", "[crates] show info" },
  f = { "<cmd>lua require'crates'.show_features_popup()<cr>", "[crates] show features" },
  D = { "<cmd>lua require'crates'.show_dependencies_popup()<cr>", "[crates] show dependencies" },
}

local harpoon_ui = require "harpoon.ui"

for i = 1, 4 do
  lvim.builtin.which_key.mappings[tostring(i)] = {
    function()
      harpoon_ui.nav_file(i)
    end,
    "Mark " .. i,
  }
end

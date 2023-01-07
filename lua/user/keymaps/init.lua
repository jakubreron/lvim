local harpoon_ui = require "harpoon.ui"
local harpoon_mark = require "harpoon.mark"

lvim.keys = {
  normal_mode = {
    ["Q"] = harpoon_ui.toggle_quick_menu,
    ["]c"] = harpoon_ui.nav_next,
    ["[c"] = harpoon_ui.nav_prev,
    ["<C-f>"] = harpoon_mark.add_file,

    -- TODO: find another bind
    -- ["<C-m>"] = "<cmd>MaximizerToggle!<CR>",
    -- ["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<CR>",
    -- ["<C-b>"] = "mmggVG<Plug>(comment_toggle_linewise_visual)`m",

    ["yoea"] = "<cmd>set eventignore=all<CR>",
    ["yoen"] = "<cmd>set eventignore=<CR>",
    ["yoss"] = "<cmd>setlocal spell!<CR>",
    ["yose"] = "<cmd>setlocal spell! spelllang=en<CR>",
    ["yosp"] = "<cmd>setlocal spell! spelllang=pl<CR>",
  },

  visual_mode = {
    ["<leader>p"] = '"_dP',
  },
}

require "user.keymaps.which-key"

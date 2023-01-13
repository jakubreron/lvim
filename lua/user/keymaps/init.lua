require "user.keymaps.which-key"

local harpoon_ui = require "harpoon.ui"
local harpoon_mark = require "harpoon.mark"

lvim.keys = {
  normal_mode = {
    ["<C-f>"] = harpoon_ui.toggle_quick_menu,
    ["<C-b>"] = harpoon_mark.add_file,
    ["<C-s>"] = "<cmd>w!<CR>",
    -- ["]c"] = harpoon_ui.nav_next,
    -- ["[c"] = harpoon_ui.nav_prev,

    ["]x"] = "<cmd>lua vim.diagnostic.goto_next()<CR>", -- next diagnostic
    ["[x"] = "<cmd>lua vim.diagnostic.goto_prev()<CR>", -- prev diagnostic

    ["]c"] = "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", -- next change
    ["[c"] = "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", -- prev change

    ["]u"] = "<cmd>lua require('neotest').jump.next({ status = 'failed' })<CR>", -- next failed test
    ["[u"] = "<cmd>lua require('neotest').jump.prev({ status = 'failed' })<CR>", -- prev failed test

    -- TODO: find another bind
    -- ["<C-m>"] = "<cmd>MaximizerToggle!<CR>",
    -- ["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<CR>",

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

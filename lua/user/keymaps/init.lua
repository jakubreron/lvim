require "user.keymaps.which-key"

local harpoon_ui = require "harpoon.ui"
local harpoon_mark = require "harpoon.mark"

lvim.keys = {
  normal_mode = {
    ["<C-f>"] = harpoon_ui.toggle_quick_menu,
    ["<C-b>"] = harpoon_mark.add_file,
    -- ["]c"] = harpoon_ui.nav_next,
    -- ["[c"] = harpoon_ui.nav_prev,

    ["]c"] = "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", -- next change
    ["[c"] = "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", -- prev change

    ["]u"] = "<cmd>lua require('neotest').jump.next({ status = 'failed' })<CR>", -- next failed test
    ["[u"] = "<cmd>lua require('neotest').jump.prev({ status = 'failed' })<CR>", -- prev failed test
  },
}

require "user.keymaps.which-key"

local harpoon_ui = require "harpoon.ui"
local harpoon_mark = require "harpoon.mark"
vim.keymap.set("n", "<C-f>", harpoon_ui.toggle_quick_menu, {
  desc = "Toggle harpoon quick menu",
})
vim.keymap.set("n", "<C-b>", harpoon_mark.add_file, {
  desc = "Add file to harpoon",
})
-- ["]c"] = harpoon_ui.nav_next,
-- ["[c"] = harpoon_ui.nav_prev,

-- TODO: if project has git, use next/prev git change, if not, then use changelist
vim.keymap.set("n", "]c", "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", {
  desc = "Next git change",
})
vim.keymap.set("n", "[c", "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", {
  desc = "Prev git change",
})

local todo_comments = require "todo-comments"
vim.keymap.set("n", "]t", todo_comments.jump_next, {
  desc = "Next todo comment",
})
vim.keymap.set("n", "[t", todo_comments.jump_prev, {
  desc = "Previous todo comment",
})

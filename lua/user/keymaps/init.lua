require "user.keymaps.which-key"

local harpoon = require "harpoon"
-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<C-f>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, {
  desc = "Toggle harpoon quick menu",
})

vim.keymap.set("n", "<C-b>", function()
  harpoon:list():append()
end, {
  desc = "Add file to harpoon",
})

vim.keymap.set("n", "]h", function()
  harpoon:list():next()
end, {
  desc = "Next harpoon file",
})

vim.keymap.set("n", "[h", function()
  harpoon:list():prev()
end, {
  desc = "Prev harpoon file",
})

for i = 1, 6 do
  lvim.builtin.which_key.mappings[tostring(i)] = {
    function()
      harpoon:list():select(i)
    end,
    "Mark " .. i,
  }
end

-- TODO: if project has git, use next/prev git change, if not, then use changelist
vim.keymap.set("n", "]c", "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", {
  desc = "Next git change",
})
vim.keymap.set("n", "[c", "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", {
  desc = "Prev git change",
})

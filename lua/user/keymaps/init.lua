require "user.keymaps.which-key"

-- TODO: if project has git, use next/prev git change, if not, then use changelist
vim.keymap.set("n", "]c", "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", {
  desc = "Next git change",
})
vim.keymap.set("n", "[c", "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", {
  desc = "Prev git change",
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Autocommands (https://neovim.io/doc/user/autocmd.html)

-- TODO: clean this atrocity later, create a proper array with a loop or check if lvim.autocmds is fixed (it does not work as of 25.05.2022)
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/autocommands.lua" },
  command = "!git add .; git commit -m 'config(autocommands): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/builtin.lua" },
  command = "!git add .; git commit -m 'config(builtin): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/general.lua" },
  command = "!git add .; git commit -m 'config(general): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/keymaps.lua" },
  command = "!git add .; git commit -m 'config(keymaps): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/lsp.lua" },
  command = "!git add .; git commit -m 'config(lsp): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/plugins.lua" },
  command = "!git add .; git commit -m 'config(plugins): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand "$LVIM_CONFIG_DIR/lua/config/themes.lua" },
  command = "!git add .; git commit -m 'config(themes): ⚙️ auto-commit changes'; git push",
})

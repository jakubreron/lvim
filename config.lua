vim.cmd [[
  source ~/.config/nvim/shared/general.lua
  source ~/.config/nvim/shared/autocmds.lua
  source ~/.config/nvim/shared/keymaps.lua
  source ~/.config/nvim/shared/netrw.lua
  source ~/.config/nvim/shared/shortcuts.vim
]]

require "user.plugins"

require "user.builtin"

require "user.keymaps"

require "user.lsp"

vim.cmd [[
  source ~/.config/nvim/shared/general.lua
  source ~/.config/nvim/shared/autocmds.lua
  source ~/.config/nvim/shared/mappings.lua
  source ~/.config/nvim/shared/shortcuts.lua
  source ~/.config/nvim/shared/netrw.vim
]]

require "user.plugins"

require "user.builtin"

require "user.keymaps"

require "user.lsp"

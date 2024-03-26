vim.cmd [[
  source ~/.config/nvim.old/shared/general.lua
  source ~/.config/nvim.old/shared/autocmds.lua
  source ~/.config/nvim.old/shared/iabbrev.lua
  source ~/.config/nvim.old/shared/keymaps.lua
  source ~/.config/nvim.old/shared/netrw.lua
  source ~/.config/nvim.old/shared/shortcuts.vim
]]

require "user.plugins"

require "user.builtin"

require "user.keymaps"

require "user.lsp"

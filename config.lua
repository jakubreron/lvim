vim.cmd [[
  source ~/.config/nvim/lua/custom/general.lua
  source ~/.config/nvim/lua/custom/autocmds.lua
  source ~/.config/nvim/lua/custom/iabbrev.lua
  source ~/.config/nvim/lua/custom/keymaps/init.lua
  source ~/.config/nvim/lua/custom/netrw.lua
  source ~/.config/nvim/lua/custom/shortcuts.vim
]]

require "user.plugins"

require "user.builtin"

require "user.keymaps"

require "user.lsp"

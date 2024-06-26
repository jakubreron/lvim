vim.cmd [[
  source ~/.config/nvim/lua/custom/settings.lua
  source ~/.config/nvim/lua/custom/autocmds.lua
  source ~/.config/nvim/lua/custom/iabbrev.lua
  source ~/.config/nvim/lua/custom/keymaps/init.lua
  source ~/.config/nvim/lua/custom/keymaps/autogenerated.lua
]]

require "user.plugins"

require "user.builtin"

require "user.keymaps"

require "user.lsp"

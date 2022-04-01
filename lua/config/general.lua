-- on save
lvim.format_on_save = false
lvim.lint_on_save = true

-- vim
vim.opt.relativenumber = true
vim.opt.spelllang:append("cjk") -- NOTE: disable spellchecking for asian characters

vim.opt.path:append("**")
vim.opt.dictionary = "/usr/share/dict/words"
vim.opt.thesaurus = "~/.config/lvim/mthesaur.txt"

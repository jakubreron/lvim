-- on save
lvim.format_on_save = true
lvim.lint_on_save = true

-- vim
vim.opt.relativenumber = true
vim.opt.spelllang:append "cjk" -- NOTE: disable spellchecking for asian characters

vim.opt.dictionary = "/usr/share/dict/words"
vim.opt.thesaurus = "~/.config/lvim/mthesaur.txt"

vim.opt.path:append "**"
vim.opt.wildignore:append "*.pyc"
vim.opt.wildignore:append "*_build/*"
vim.opt.wildignore:append "**/coverage/*"
vim.opt.wildignore:append "**/node_modules/*"
vim.opt.wildignore:append "**/android/*"
vim.opt.wildignore:append "**/ios/*"
vim.opt.wildignore:append "**/.git/*"
vim.opt.wildignore:append "tags"

-- Autocommands (https://neovim.io/doc/user/autocmd.html)

-- TODO: clean this atrocity later, create a proper array with a loop or check if lvim.autocmds is fixed (it does not work as of 25.05.2022)
-- TODO: find a way to execute a command without !cd (base the directory on current file location)

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "bm-files,bm-dirs" },
  command = "!shortcuts",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { "bm-files,bm-dirs" },
  command = "!cd $DOTFILES_DIR/voidrice; ; git add .; git commit -m 'config(bm-dirs/files): ⚙️ auto-commit changes'; git push",
})

vim.api.nvim_create_autocmd("BufRead,BufNewFile", {
  pattern = { "Xresources,Xdefaults,xresources,xdefaults" },
  command = "set filetype=xdefaults",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "Xresources,Xdefaults,xresources,xdefaults" },
  command = "!xrdb %",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/st/config.h") },
  command = "!cd $XDG_SRC_HOME/st/; sudo make install"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/dmenu/config.h") },
  command = "!cd $XDG_SRC_HOME/dmenu/; sudo make install"
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/dwm/dwm.c") },
  command = "!cd $XDG_SRC_HOME/dwm/; sudo make install"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/dwm/config.h") },
  command = "!cd $XDG_SRC_HOME/dwm/; sudo make install && kill -HUP $(pgrep -u $USER 'dwm$')"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/dwmblocks/config.h") },
  command = "!cd $XDG_SRC_HOME/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_SRC_HOME/sxiv-flexipatch/{config.def,patches.def}.h") },
  command = "!cd $XDG_SRC_HOME/sxiv-flexipatch/; sudo rm {config,patches}.h && sudo make install"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$XDG_BIN_HOME/statusbar/*") },
  command = "!{ killall -q dwmblocks;setsid -f dwmblocks }"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/Documents/vimwiki/**/*.*") },
  command = "!cd $DOTFILES_DIR/universal/Documents/vimwiki/*; git add *; git commit -m 'docs(vimwiki): ✏️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/.ticker.yaml") },
  command = "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(ticker): ✏️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/.config/git/config") },
  command = "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'config(git): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/.config/git/.gitignore_global") },
  command = "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'config(gitignore_global): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/.ticker.yaml") },
  command = "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(ticker): ✏️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/universal/.config/bookmarks") },
  command = "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(bookmarks): ✏️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/shell/aliasrc") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(aliases): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/lf/lfrc") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(lfrc): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/picom.conf") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(picom): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/shell/profile") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(profile): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/newsboat/urls") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'docs(newsboat): ✏️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$DOTFILES_DIR/voidrice/.config/zsh/.zshrc") },
  command = "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(zshrc): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/autocommands.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(autocommands): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/builtin.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(builtin): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/general.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(general): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/keymaps.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(keymaps): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/lsp.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(lsp): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/plugins.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(plugins): ⚙️ auto-commit changes'; git push"
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = { vim.fn.expand("$LVIM_CONFIG_DIR/lua/config/themes.lua") },
  command = "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(themes): ⚙️ auto-commit changes'; git push"
})

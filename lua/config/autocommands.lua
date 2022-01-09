-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  {
    "BufWritePost",
    "bm-files,bm-dirs",
    "!shortcuts",
  },
  {
    "VimLeave",
    "bm-files,bm-dirs",
    "!cd $DOTFILES_DIR/voidrice; ; git add .; git commit -m 'config(bm-dirs/files): ⚙️ auto-commit changes'; git push",
  },
  {
    "BufRead,BufNewFile",
    "Xresources,Xdefaults,xresources,xdefaults",
    "set filetype=xdefaults",
  },
  {
    "BufWritePost",
    "Xresources,Xdefaults,xresources,xdefaults",
    "!xrdb %",
  },
  {
    "VimLeave",
    "$XDG_SRC_HOME/st/config.h",
    "!cd $XDG_SRC_HOME/st/; sudo make install",
  },
  {
    "VimLeave",
    "$XDG_SRC_HOME/dmenu/config.h",
    "!cd $XDG_SRC_HOME/dmenu/; sudo make install",
  },
  {
    "VimLeave",
    "$XDG_SRC_HOME/dwm/config.h",
    "!cd $XDG_SRC_HOME/dwm/; sudo make install && kill -HUP $(pgrep -u $USER 'dwm$')",
  },
  {
    "BufWritePost",
    "$XDG_SRC_HOME/dwm/dwm.c",
    "!cd $XDG_SRC_HOME/dwm/; sudo make install",
  },
  {
    "VimLeave",
    "$XDG_SRC_HOME/dwmblocks/config.h",
    "!cd $XDG_SRC_HOME/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }",
  },
  {
    "VimLeave",
    "$XDG_SRC_HOME/sxiv-flexipatch/{config.def,patches.def}.h",
    "!cd $XDG_SRC_HOME/sxiv-flexipatch/; sudo rm {config,patches}.h && sudo make install",
  },
  {
    "VimLeave",
    "$XDG_BIN_HOME/statusbar/*",
    "!{ killall -q dwmblocks;setsid -f dwmblocks }",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/vimwiki/*",
    "!cd ~/vimwiki; git add *; git commit -m 'docs(vimwiki): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/arch/README.md",
    "!cd $DOTFILES_DIR/arch; git add *; git commit -m 'docs(readme): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/README.md",
    "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(readme): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/.ticker.yaml",
    "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(ticker): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/.config/git/config",
    "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'config(git): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/.ticker.yaml",
    "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(ticker): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/universal/.config/bookmarks",
    "!cd $DOTFILES_DIR/universal; git add .; git commit -m 'docs(bookmarks): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/voidrice/.config/shell/aliasrc",
    "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(aliases): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/voidrice/.config/lf/lfrc",
    "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(lfrc): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/voidrice/.config/shell/profile",
    "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(profile): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/voidrice/.config/newsboat/urls",
    "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'docs(newsboat): ✏️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$DOTFILES_DIR/voidrice/.config/zsh/.zshrc",
    "!cd $DOTFILES_DIR/voidrice; git add .; git commit -m 'config(zshrc): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/autocommands.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(autocommands): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/builtin.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(builtin): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/general.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(general): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/keymaps.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(keymaps): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/lsp.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(lsp): ⚙️ auto-commit changes'; git push",
  },
  {
    "VimLeave",
    "$LVIM_CONFIG_DIR/lua/config/plugins.lua",
    "!cd $LVIM_CONFIG_DIR; git add .; git commit -m 'config(plugins): ⚙️ auto-commit changes'; git push",
  },
}

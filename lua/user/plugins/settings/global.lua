vim.g.matchup_matchparen_offscreen = { method = "popup" }

vim.g.vimwiki_list = {
  {
    path = vim.fn.expand "$VIMWIKI_DIR",
    syntax = "markdown",
    ext = ".md",
  },
}

vim.g.tmux_navigator_no_wrap = 1

-- remove unnecessary unimpaired mappings
vim.g.nremap = {
  ["[u"] = "",
  ["[uu"] = "",
  ["v_[u"] = "",

  ["]u"] = "",
  ["]uu"] = "",
  ["v_]u"] = "",

  ["[x"] = "",
  ["[xx"] = "",
  ["v_[x"] = "",

  ["]x"] = "",
  ["]xx"] = "",
  ["v_]x"] = "",

  ["[y"] = "",
  ["[yy"] = "",
  ["v_[y"] = "",
  ["[C"] = "",
  ["[CC"] = "",
  ["v_[C"] = "",

  ["]y"] = "",
  ["]yy"] = "",
  ["v_]y"] = "",
  ["]C"] = "",
  ["]CC"] = "",
  ["v_]C"] = "",
}

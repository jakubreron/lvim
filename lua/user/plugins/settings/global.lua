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
  --tags
  ["[t"] = "",
  ["]t"] = "",
  ["[T"] = "",
  ["]T"] = "",

  -- url encode/decode
  ["[u"] = "",
  ["[uu"] = "",
  ["v_[u"] = "",
  ["]u"] = "",
  ["]uu"] = "",
  ["v_]u"] = "",

  -- XML encode/decode
  ["[x"] = "",
  ["[xx"] = "",
  ["v_[x"] = "",
  ["]x"] = "",
  ["]xx"] = "",
  ["v_]x"] = "",

  -- C string encode/decode
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

-- TODO: find a way to create project specific ignore...
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/components/*" }
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/old_store/*" }
lvim.builtin.telescope.defaults.file_ignore_patterns = { "static/charting_library/*" }

-- TODO: find better settings & themes
lvim.builtin.telescope.pickers = {
  find_files = {
    hidden = true,
  },
  live_grep = {
    only_sort_text = true,
  },
  grep_string = {
    only_sort_text = true,
  },
  buffers = {
    previewer = false,
    initial_mode = "normal",
  },
  planets = {
    show_pluto = true,
    show_moon = true,
  },
  git_files = {
    hidden = true,
    previewer = false,
    show_untracked = true,
  },
  lsp_references = {
    initial_mode = "normal",
  },
  lsp_definitions = {
    initial_mode = "normal",
  },
  lsp_declarations = {
    initial_mode = "normal",
  },
  lsp_implementations = {
    initial_mode = "normal",
  },
}

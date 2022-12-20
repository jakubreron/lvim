lvim.format_on_save = false
lvim.lint_on_save = true
lvim.reload_config_on_save = false

lvim.builtin.breadcrumbs.active = false -- context
lvim.builtin.illuminate.active = false -- word highlight
lvim.builtin.dap.active = false -- debugging

lvim.builtin.bufferline.options.numbers = "buffer_id"
lvim.builtin.bufferline.options.always_show_bufferline = true
lvim.builtin.bufferline.options.show_close_icon = false

lvim.builtin.which_key.setup.plugins.marks = true
lvim.builtin.which_key.setup.plugins.registers = true

lvim.builtin.project.silent_chdir = false

-- TODO: find a way to create project specific ignore...
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/components/*" }
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/old_store/*" }

local components = require "lvim.core.lualine.components"
local function packageinfo()
  return require("package-info").get_status()
end

lvim.builtin.lualine.sections.lualine_c = {
  components.filename,
  components.diff,
  components.python_env,
  packageinfo,
}
lvim.builtin.lualine.inactive_sections.lualine_c = lvim.builtin.lualine.sections.lualine_c

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ensure_installed = "all"
-- TODO: remove phpdoc from ignored after they fix the upstream: https://github.com/nvim-treesitter/nvim-treesitter/issues/2837
lvim.builtin.treesitter.ignore_install = { "phpdoc" }

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

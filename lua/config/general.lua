lvim.format_on_save = false -- TODO: skip for "C" files, enable for anything else
lvim.lint_on_save = true

lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = false -- word highlight
lvim.builtin.dap.active = false -- debugging
lvim.builtin.notify.active = false

lvim.builtin.bufferline.options.numbers = "buffer_id"
lvim.builtin.bufferline.options.always_show_bufferline = true

lvim.builtin.which_key.setup.plugins.marks = true
lvim.builtin.which_key.setup.plugins.registers = true

lvim.builtin.project.silent_chdir = false

local components = require "lvim.core.lualine.components"
local function packageinfo()
  return require("package-info").get_status()
end
lvim.builtin.lualine.sections.lualine_a = {
  components.mode, -- default from lvim
  packageinfo, -- added
}

-- TODO: remove phpdoc from ignored after they fix the upstream: https://github.com/nvim-treesitter/nvim-treesitter/issues/2837
lvim.builtin.treesitter.ensure_installed = "all"
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

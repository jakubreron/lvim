lvim.builtin.telescope.theme = "ivy"

local telescope = require "telescope"
local lga_actions = require "telescope-live-grep-args.actions"

-- TODO: check if there is a way with reusing the lvim.builtin object
telescope.setup {
  extensions = {
    live_grep_args = {
      auto_quoting = true,
      mappings = {
        i = {
          ["<C-q>"] = lga_actions.quote_prompt(),
          ["<C-g>"] = lga_actions.quote_prompt { postfix = " --iglob " },
        },
      },
    },
  },
}

-- TODO: remove after the project ends
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/components/*" }
lvim.builtin.telescope.defaults.file_ignore_patterns = { "src/old_store/*" }
lvim.builtin.telescope.defaults.file_ignore_patterns = { "static/charting_library/*" }

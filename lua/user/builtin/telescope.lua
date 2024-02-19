local lga_actions = require "telescope-live-grep-args.actions"

lvim.builtin.telescope.theme = "ivy"
lvim.builtin.telescope.defaults.file_ignore_patterns = { "**/*.snap", "**/*.svg" }
lvim.builtin.telescope.extensions = {
  fzf = {
    fuzzy = true, -- false will only do exact matching
    override_generic_sorter = true, -- override the generic sorter
    override_file_sorter = true, -- override the file sorter
    case_mode = "smart_case", -- or "ignore_case" or "respect_case"
  },
  live_grep_args = {
    auto_quoting = true,
    mappings = {
      i = {
        ["<C-q>"] = lga_actions.quote_prompt(),
        ["<C-g>"] = lga_actions.quote_prompt { postfix = " --iglob " },
        ["<C-s>"] = lga_actions.quote_prompt { postfix = " --iglob *.spec." },
      },
    },
  },
}

lvim.builtin.telescope.on_config_done = function()
  require("telescope").load_extension "live_grep_args"
end

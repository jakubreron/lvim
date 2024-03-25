require "user.builtin.lualine"
require "user.builtin.telescope"
require "user.builtin.treesitter"
require "user.builtin.which-key"
require "user.builtin.nvimtree"

lvim.transparent_window = true
lvim.colorscheme = "catppuccin-mocha"
lvim.reload_config_on_save = true
lvim.format_on_save.enabled = false
-- lvim.format_on_save = {
--   enabled = true,
--   pattern = "*",
--   timeout = 1000,
-- }

if string.find(vim.fn.getcwd(), "work") ~= nil then
  lvim.builtin.project.patterns = { "package.json", "project.json" }
end

lvim.builtin.bufferline.active = false
lvim.builtin.alpha.active = false
lvim.builtin.lir.active = false
lvim.builtin.dap.active = false
lvim.builtin.breadcrumbs.active = false

lvim.builtin.bigfile.config = {
  filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
  pattern = function(bufnr, filesize_mib)
    -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
    local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
    local file_length = #file_contents
    if file_length > 5000 or filesize_mib > 0.5 then
      return true
    end
  end,
  features = { -- features to disable
    "indent_blankline",
    "illuminate",
    -- "lsp",
    -- "treesitter",
    "syntax",
    "vimopts",
    -- "filetype",
  },
}

lvim.builtin.indentlines.active = true
lvim.builtin.autopairs.active = true

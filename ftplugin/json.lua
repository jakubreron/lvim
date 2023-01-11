local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  l = {
    n = {
      name = "NPM",
      f = { "<cmd>lua require('package-info').show({ force = true })<CR>", "Fetch" },
      h = { "<cmd>lua require('package-info').hide()<CR>", "Hide" },
      d = { "<cmd>lua require('package-info').delete()<CR>", "Delete" },
      u = { "<cmd>lua require('package-info').update()<CR>", "Update" },
      i = { "<cmd>lua require('package-info').install()<CR>", "Install" },
      r = { "<cmd>lua require('package-info').reinstall()<CR>", "Reinstall all" },
      c = { "<cmd>lua require('package-info').change_version()<CR>", "Change version" },
    },
  },
}

which_key.register(mappings, opts)

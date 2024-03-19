if string.find(vim.fn.expand("%:p"), "package.json") ~= nil then
  local status_ok, which_key = pcall(require, "which-key")
  if not status_ok then
    return
  end

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = vim.api.nvim_get_current_buf(), -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
  }

  local mappings = {
    l = {
      n = {
        name = "NPM",
        a = { "<cmd>lua require('package-info').install()<CR>", "Add" },
        d = { "<cmd>lua require('package-info').delete()<CR>", "Delete" },
        f = { "<cmd>lua require('package-info').show({ force = true })<CR>", "Fetch" },
        h = { "<cmd>lua require('package-info').hide()<CR>", "Hide" },
        u = { "<cmd>lua require('package-info').update()<CR>", "Update" },
        R = { "<cmd>lua require('package-info').reinstall()<CR>", "Reinstall all" },
        c = { "<cmd>lua require('package-info').change_version()<CR>", "Change version" },
      },
    },
  }

  which_key.register(mappings, opts)
end

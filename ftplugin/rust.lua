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
  r = {
    name = "Rust",
    r = { "<cmd>RustRunnables<CR>", "Runnables" },
    t = { "<cmd>lua _CARGO_TEST()<CR>", "Cargo Test" },
    m = { "<cmd>RustExpandMacro<CR>", "Expand Macro" },
    c = { "<cmd>RustOpenCargo<CR>", "Open Cargo" },
    p = { "<cmd>RustParentModule<CR>", "Parent Module" },
    d = { "<cmd>RustDebuggables<CR>", "Debuggables" },
    v = { "<cmd>RustViewCrateGraph<CR>", "View Crate Graph" },
    R = {
      "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<CR>",
      "Reload Workspace",
    },
    o = { "<cmd>RustOpenExternalDocs<CR>", "Open External Docs" },
    y = { "<cmd>lua require'crates'.open_repository()<CR>", "[crates] open repository" },
    P = { "<cmd>lua require'crates'.show_popup()<CR>", "[crates] show popup" },
    i = { "<cmd>lua require'crates'.show_crate_popup()<CR>", "[crates] show info" },
    f = { "<cmd>lua require'crates'.show_features_popup()<CR>", "[crates] show features" },
    D = { "<cmd>lua require'crates'.show_dependencies_popup()<CR>", "[crates] show dependencies" },
  },
}

which_key.register(mappings, opts)

lvim.keys = {
  normal_mode = {
    ["Q"] = "<cmd>BufferKill<CR>", -- kill buffer

    -- ["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<CR>", -- new tmux session
    -- ["<C-b>"] = "mmggVG<Plug>(comment_toggle_linewise_visual)`m", -- comment whole file and preserve the cursor position with mark hack
    ["<C-f>"] = require("harpoon.mark").add_file,
    ["<C-b>"] = require("harpoon.ui").toggle_quick_menu,

    -- TODO: find another bind
    -- ["<C-m>"] = "<cmd>MaximizerToggle!<CR>", -- comment whole file and preserve the cursor position with mark hack

    -- ["]c"] = "<cmd>lua require'gitsigns'.next_hunk({navigation_message = false})<CR>", -- next change
    -- ["[c"] = "<cmd>lua require'gitsigns'.prev_hunk({navigation_message = false})<CR>", -- prev change

    ["yoea"] = "<cmd>set eventignore=all<CR>", -- quick toggle like in tpope/vim-unimpaired
    ["yoen"] = "<cmd>set eventignore=<CR>", -- quick toggle like in tpope/vim-unimpaired
    ["yoss"] = "<cmd>setlocal spell!<CR>", -- quick spelling toggle adjustements
    ["yose"] = "<cmd>setlocal spell! spelllang=en<CR>", -- English
    ["yosp"] = "<cmd>setlocal spell! spelllang=pl<CR>", -- Polish
  },

  visual_mode = {
    ["<leader>p"] = '"_dP', -- paste without cluttering the register
  },
}

require "user.keymaps.which-key"

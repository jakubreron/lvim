local console_log = "console.log('%c', 'font-size: 24px; color: skyblue;')<ESC>02f'i "
local console_debug = "console.debug()<ESC>0f(a"

local M = {
  c = {
    name = "Console",
    D = { "O" .. console_debug, "console.debug above" },
    d = { "o" .. console_debug, "console.debug below" },
    L = { "O" .. console_log, "console.log above" },
    l = { "o" .. console_log, "console.log below" },
    p = {
      "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
      "Performance console.log",
    },
  },
  u = {
    name = "Unit Tests",
    r = {
      function()
        vim.cmd "lua require('neotest').output_panel.clear()"
        vim.cmd "lua require('neotest').run.run()"
      end,
      "Run Nearest",
    },
    f = {
      function()
        vim.cmd "lua require('neotest').output_panel.clear()"
        vim.cmd "lua require('neotest').run.run(vim.fn.expand('%'))"
      end,
      "Run File",
    },
    l = {
      function()
        vim.cmd "lua require('neotest').output_panel.clear()"
        vim.cmd "lua require('neotest').run.run_last()"
      end,
      "Run last",
    },
    s = { "<cmd>lua require('neotest').run.stop()<CR>", "Stop" },
    t = { "<cmd>lua require('neotest').summary.toggle()<CR>", "Summary Tree" },
    w = { "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>", "Run & Watch" },
    c = {
      function()
        vim.cmd "lua require('neotest').summary.toggle()"
        vim.cmd "lua require('neotest').output_panel.toggle()"
      end,
      "Summary Tree + Output Panel Combo",
    },
    a = { "<cmd>lua require('neotest').run.attach()<CR>", "Attach" },
    p = { "<cmd>lua require('neotest').output_panel.toggle()<CR>", "Panel Toggle" },
    o = { "<cmd>lua require('neotest').output.open({ enter = true })<CR>", "Output" },
  },
}

return M

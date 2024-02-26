local console_log = "console.log('%c', 'font-size: 24px; color: skyblue;')<ESC>02f'i "
local console_debug = "console.debug()<ESC>0f(a"

local M = {
  c = {
    D = { "O" .. console_debug, "console.debug above" },
    d = { "o" .. console_debug, "console.debug below" },
    L = { "O" .. console_log, "console.log above" },
    l = { "o" .. console_log, "console.log below" },
    p = {
      "yiwOconst t0 = performance.now();<ESC>oconst t1 = performance.now();<ESC>oconsole.log(`%c <ESC>pa call took ${t1 - t0} milliseconds`, 'font-size: 24px; color: green;');<ESC>dkp",
      "Performance console.log",
    },
  },
}

return M

local M = {}

M.config = function()
  local status_ok, neotest = pcall(require, "neotest")
  if not status_ok then
    return
  end

  neotest.setup {
    adapters = {
      require "neotest-jest" {
        jestCommand = "jest --watch",
        jestConfigFile = "tests/unit/jest.conf.js",
      },
    },
  }
end

return M

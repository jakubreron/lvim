local M = {}

M.config = function()
  local neotest_status_ok, neotest = pcall(require, "neotest")
  if not neotest_status_ok then
    return
  end

  neotest.setup {
    quickfix = {
      enabled = false,
      open = true,
    },

    adapters = {
      require "neotest-jest" {
        -- jestCommand = "jest --watch",
        jestConfigFile = "tests/unit/jest.conf.js",
      },
    },
  }

  local neodev_status_ok, neodev = pcall(require, "neodev")
  if not neodev_status_ok then
    return
  end

  neodev.setup {
    library = {
      plugins = { "neotest" },
      types = true,
    },
  }
end

return M

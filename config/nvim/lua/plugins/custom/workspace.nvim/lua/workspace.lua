local M = {}

function M.setup()
  vim.notify("Hello world", 1)
end

require("util").getConfig()

return M

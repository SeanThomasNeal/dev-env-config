local M = {}

function M.setup()
  vim.notify("Hello world - workspace.nvim", 1)
end

require("util").getConfig("workspaces")

return M

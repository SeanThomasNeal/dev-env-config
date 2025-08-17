local M = {}

function M.setup()
  vim.notify("Hello World - Util", 0)
end

function M.getConfig()
  vim.notify("Retrieving config", 0)
end

return M

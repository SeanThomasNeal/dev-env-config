local utils = require("util")

local M = {}

function M.setup()
  if utils.hasConfig("workspaces") == 0 then
    utils.setConfig("workspaces", vim.empty_dict())
  end
end

return M

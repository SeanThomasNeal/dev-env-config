local configFile = vim.fn.getenv("custom-plugins-dir") .. "workspace.nvim/lua/local.lua"
if vim.fn.filereadable(configFile) == 0 then
  local toWrite = {
    "return {",
    "\tworkspaces = {}",
    "}",
  }
  vim.fn.writefile(toWrite, configFile)
end

local config = require("local")
vim.notify(config, 0)

require("workspace").setup()

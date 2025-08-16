local info = debug.getinfo(1, "S")
local currentFolder = info.source:sub(2):match("(.*/)") or nil
vim.fn.setenv("custom-plugins-dir", currentFolder)

if currentFolder == nil then
  return {}
end

return {
  { dir = currentFolder .. "workspace.nvim" },
}

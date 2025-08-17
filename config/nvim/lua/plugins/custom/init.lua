local info = debug.getinfo(1, "S")
local currentFolder = info.source:sub(2):match("(.*/)") or nil

if currentFolder == nil then
  return {}
end

return {
  { dir = currentFolder .. "util.nvim" },
  { dir = currentFolder .. "workspace.nvim" },
}

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

---@module 'snacks'

LazyVim.safe_keymap_set("n", "<C-p>", function()
  Snacks.picker.git_files()
end, { desc = "Find file in git tree", remap = true })

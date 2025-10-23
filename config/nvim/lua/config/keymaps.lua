-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

vim.keymap.set("n", "<C-PageUp>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<C-PageDown>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<A-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Buffer Prev" })
vim.keymap.set("n", "<A-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Buffer Next" })

vim.keymap.set(
  "n",
  "<leader><Up><Up><Down><Down><Left><Right><Left><Right>ba<enter>",
  "<cmd>Doom<cr>",
  { desc = "Doom" }
)
vim.keymap.set("n", "<leader>kkjjhlhlba<enter>", "<cmd>Doom<cr>", { desc = "Doom" })

vim.keymap.set("n", "<F12>", function()
  Snacks.picker.lsp_references()
end, { desc = "References" })

vim.keymap.set("n", "<C-p>", function()
  Snacks.picker.git_files()
end, { desc = "Find file in git tree" })

vim.keymap.set("n", "<C-t><C-f>", function()
  Snacks.picker.grep({
    args = { "--glob=!**/*spec.*", "--glob=!**/*test.*" },
  })
end, { desc = "Grep files filtering out test files" })

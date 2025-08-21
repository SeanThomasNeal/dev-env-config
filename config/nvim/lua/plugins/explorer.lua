return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>fE",
      function()
        ---@diagnostic disable-next-line: missing-fields
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>fe",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "<leader>E", "<leader>fE", desc = "Explorer Snacks (root dir)", remap = true },
    { "<leader>e", "<leader>fe", desc = "Explorer Snacks (cwd)", remap = true },
  },
}

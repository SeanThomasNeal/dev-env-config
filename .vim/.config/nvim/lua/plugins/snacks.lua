return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        exclude = { ".git" },
        toggles = { hidden = false, ignored = false },
      },
    },
    keys = {
      {
        "<C-p>",
        function()
          Snacks.picker.git_files()
        end,
        desc = "Find file in git tree",
      },
      {
        "<leader>/",
        function()
          Snacks.picker.grep({ hidden = false, ignored = false })
        end,
        desc = "Grep",
      },
      {
        "<leader>sg",
        function()
          Snacks.picker.grep({ hidden = false, ignored = false })
        end,
        desc = "Grep",
      },
    },
  },
}

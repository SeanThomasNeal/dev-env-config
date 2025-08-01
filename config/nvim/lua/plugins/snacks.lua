return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<C-p>",
        function()
          Snacks.picker.git_files()
        end,
        desc = "Find file in git tree",
      },
    },
  },
}

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
    dependencies = {
      {
        "Mofiqul/vscode.nvim",
        opts = function()
          vim.o.background = "dark"
          local c = require("vscode.colors").get_colors()
          require("vscode").setup({
            italic_comments = true,
            underline_links = true,
            terminal_colors = true,
            group_overrides = {
              Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
            },
          })
        end,
      },
    },
  },
}

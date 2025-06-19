return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["javascript"] = { "biome-check", "prettier" },
        ["javascriptreact"] = { "biome-check", "prettier" },
        ["typescript"] = { "biome-check", "prettier" },
        ["typescriptreact"] = { "biome-check", "prettier" },
        ["json"] = { "biome-check", "prettier" },
        ["css"] = { "biome-check", "prettier" },
      },
    },
  },
}

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["javascript"] = { "biome-check", prettier = "fallback" },
        ["javascriptreact"] = { "biome-check", prettier = "fallback" },
        ["typescript"] = { "biome-check", prettier = "fallback" },
        ["typescriptreact"] = { "biome-check", prettier = "fallback" },
        ["json"] = { "biome-check", prettier = "fallback" },
        ["css"] = { "biome-check", prettier = "fallback" },
      },
    },
  },
}

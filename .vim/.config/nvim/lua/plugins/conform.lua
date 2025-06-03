return {
  {
    "stevearc/corform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["javascript"] = { "biome-check" },
        ["javascriptreact"] = { "biome-check" },
        ["typescript"] = { "biome-check" },
        ["typescriptreact"] = { "biome-check" },
        ["json"] = { "biome-check" },
        ["css"] = { "biome-check" },
      },
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    },
  },
}

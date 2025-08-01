return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        ["javascript"] = { "biomejs", "eslint" },
        ["javascriptreact"] = { "biomejs", "eslint" },
        ["typescript"] = { "biomejs", "eslint" },
        ["typescriptreact"] = { "biomejs", "eslint" },
      },
      linters = {
        biomejs = {
          condition = function(ctx)
            return vim.fs.find({ "biome.json" }, { path = ctx.filename, upward = true })[1]
          end,
        },
        eslint = {
          condition = function(ctx)
            local filenames = {
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs",
              ".eslintrc.js",
              ".eslintrc.json",
              ".eslintrc.cjs",
              ".eslintrc.yaml",
              ".eslint.json",
            }
            return vim.fs.find(filenames, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
}

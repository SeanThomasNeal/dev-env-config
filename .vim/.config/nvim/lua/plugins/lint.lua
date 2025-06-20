-- if true then
--   return {}
-- end

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
      },
    },
  },
}

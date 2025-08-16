-- bootstrap lazy.nvim, LazyVim and your plugins
vim.fn.setenv("foobar", vim.fn.expand("%"))

require("config.lazy")
require("config.shell")

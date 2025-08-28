-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
-- vim.o.background = "dark"

-- modify flash label so it is more legible, regardless of the theme.
vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#ffffff", bg = "#d20065" })

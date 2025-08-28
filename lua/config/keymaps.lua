-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map({ "i", "c" }, "kj", "<ESC>")
map("n", ";", ":")
map("i", "<M-f>", "<C-o>e")
map("i", "<M-b>", "<C-o>b")

map("i", "<C-k>", "<esc>ld$a")
map({ "i", "n" }, "<C-e>", "<end>")
map({ "i", "n" }, "<C-a>", "<home>")

map("i", "<C-f>", "<right>")
map("i", "<C-b>", "<left>")
map("i", "<C-n>", "<down>")
map("i", "<C-p>", "<up>")
map("i", "<C-h>", "<BS>")
map("n", "<Tab>", function()
  vim.cmd("bnext")
end)
map("n", "<S-Tab>", function()
  vim.cmd("bNext")
end)

map({ "i", "n" }, "<M-/>", vim.lsp.buf.signature_help, { desc = "get signature help" })
map({ "i", "n" }, "<M-/>", vim.lsp.buf.hover)

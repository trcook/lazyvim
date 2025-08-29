-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del
map({ "i", "c" }, "kj", "<ESC>")
map("n", ";", ":")
map("i", "<M-f>", "<C-o>e")
map("i", "<M-b>", "<C-o>b")

map("i", "<C-k>", "<esc>ld$a")
map("i", "<C-d>", "<del>")
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
map({ "n" }, "<leader>x", vim.cmd.bdelete)
map("n", "<leader>fe", function()
  local current_file_dir = vim.fn.expand("%:p")
  local snacks = require("snacks/explorer")
  snacks.reveal({ file = current_file_dir })
end, { desc = "Open Snacks Explorer at current buffer's directory" })

-- i don't like the way u does undo -- it makes it tooo easy to fat finger it. make it hyper -z
-- 'D' here is for "super" need to configure this key in iterm.
map({ "i", "n" }, "<D-z>", "<cmd>undo<cr>")
map({ "i", "n" }, "<S-D-z>", "<cmd>redo<cr>")
map({ "n" }, "u", "<Nop>")

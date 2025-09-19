-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local unmap = vim.keymap.del
map({ "i", "c" }, "kj", "<ESC>")
map({ "t" }, "kj", "<C-\\><C-n>")
map("n", ";", ":")
map("i", "<M-f>", "<C-o>e")
map("i", "<M-b>", "<C-o>b")
map("i", "<C-k>", "<esc>Di")
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
map({ "n" }, "<leader>x", function()
  Snacks.bufdelete()
end, { desc = "close and remove buffer" })
map("n", "<leader>oe", function()
  oil=require('oil')
  local current_file_dir = vim.fn.expand("%:p")
  oil.open_float()
  -- local snacks = require("snacks/explorer")
  -- snacks.reveal({ file = current_file_dir })
end, { desc = "OIL!" })

map({ "n" }, "gq", "gw") -- needed to fix some nonsense where wrapping wasn't working


if vim.g.vscode then
  -- Example: map <leader>gg to open the source control panel in VS Code
vim.api.nvim_exec2("nmap j gj", {output=false})
vim.api.nvim_exec2("nmap k gk", {output=false})
  map("n","<C-d>","<PageDown>")
  map("n","<C-u>","<PageUp>")
end

map("i","<M-C-h>", "<C-w>")
map("i","<M-C-t>", "<C-d>")

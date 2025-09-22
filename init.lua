-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
vim.o.background = "light"

--require("bufferline").setup()
-- modify flash label so it is more legible, regardless of the theme.
-- snippet to inspect plugin -- temporary holding space for this
-- vim.inspect(require("lazy.core.config").plugins["conform.nvim"])
-- require("lazy.core.config").plugins['flash.nvim']

-- command to toggle virtual text on errors, which is helpful for files where there are lots of errors.
ToggleVText = function()
  local textenabled = vim.diagnostic.config()["virtual_text"]
  if textenabled then
    vim.diagnostic.config({ virtual_text = false })
  else
    vim.diagnostic.config({ virtual_text = true })
  end
end
vim.api.nvim_create_user_command("Togglevtext", ToggleVText, {})
vim.g.autoformat = false
vim.g.lazyvim_picker="snacks"

if vim.g.vscode then
  -- Example: map <leader>gg to open the source control panel in VS Code
  vim.opt.spell = false
end
if vim.g.colors_name=="nord" then
  vim.o.background='dark'
end

-- if vim.env.TERM == 'xterm' then
  -- vim.cmd([[autocmd UIEnter * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[>1u") | endif]])
  -- vim.cmd([[autocmd UILeave * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[<1u") | endif]])
-- end

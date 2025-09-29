-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
--
if vim.g.vscode then
  vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

  local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
  end

  vim.api.nvim_create_autocmd("FileType", {
    group = augroup("wrap_spell"),
    pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
    callback = function()
      vim.opt_local.wrap = true
      -- vim.opt_local.spell = false
    end,
  })
end
--
-- local function switch_theme_by_mode()
--   local mode = vim.fn.mode()
--   if mode == 'i' or mode == 'R' then -- Insert and Replace modes
--     vim.opt.background = 'light'
--   else
--     vim.opt.background = 'dark'
--   end
--   vim.cmd('colorscheme catppuccin')
-- end
--
-- vim.api.nvim_create_autocmd('ModeChanged', {
--   pattern = {'i:*', 'n:*'},
--   callback = switch_theme_by_mode
-- })
--
-- -- Ensure the colorscheme is loaded on startup with the correct initial mode.
-- vim.cmd('colorscheme catppuccin')

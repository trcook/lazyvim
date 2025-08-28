return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      -- disable a keymap
      keys[#keys + 1] = { "<C-k>", false, mode = { "i" } }
      -- add a keymap
    end,
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.lsp.signature = {
        auto_open = { enabled = false },
      }
    end,
  },
  {
    "Saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion.menu.auto_show = false
    end,
  },
}

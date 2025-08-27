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

}

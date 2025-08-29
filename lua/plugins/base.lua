return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      -- disable a keymap
      keys[#keys + 1] = { "<C-k>", false, mode = { "i" } }
      keys[#keys + 1] = {
        "<m-/>",
        function()
          vim.lsp.buf.signature_help()
        end,
        mode = { "i", "n" },
      }
    end,
    -- opts = { inlay_hints = { enabled = false } },
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
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { auto_show = false },
        ghost_text = { enabled = false },
      },
      keymap = {
        ["<M-/>"] = { "show", "show_documentation", "hide_documentation" },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        -- explorer = {
        --   hidden = false,
        --   include = { "*" },
        -- },
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {},

    config = function()
      -- some config tasks
      print("hello!!!")

      vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#ffffff", bg = "#d20065" })
    end,
  },
}

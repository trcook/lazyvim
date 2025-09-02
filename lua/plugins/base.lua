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
        explorer = {
          --   hidden = false,
          exclude = { ".venv" },
        },
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      keys = {
        {
          "s",
          mode = { "n", "x", "o" },
          function()
            require("flash").jump({
              label = { after = { 0, 2 }, style = "overlay" },
            })
          end,
          desc = "Flash",
        },
      },
      modes = {
        char = {
          enabled = true,
          highlight = { backdrop = true },
        },
      },
    },

    config = function()
      -- some config tasks
      print("hello!!!")

      vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#ffffff", bg = "#d20065" })
    end,
  },
  {
    {
      "akinsho/bufferline.nvim",
      opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.groups.integrations.bufferline").get_theme()
        end
      end,
    },
  },
}

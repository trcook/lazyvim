-- Terminal Mappings

return {
  {
    "snacks.nvim",
    enabled = true,
    opts = {
      explorer = { enabled = false },
      picker = { enabled = false },
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      terminal = {
        win = {
          keys = {
            -- this is useful for disabling ctrl-k so that we can use kill to end of line in termaial
            nav_k = { "<C-k>", mode = { "t" }, false },
            nav_h = { "<C-h>", mode = { "t" }, false },
            nav_l = { "<C-l>", mode = { "t" }, false },
            nav_j = { "<C-j>", mode = { "t" }, false },
          },
        },
      },
      scroll = { enabled = false },
      --  animate = {
      --     enabled = true,
      --     duration = { step = 5, total = 50 },
      --     easing = "linear",
      --     -- faster animation when repeating scroll after delay
      --     animate_repeat = {
      --       delay = 1, -- delay in ms before using the repeat animation
      --       duration = { step = 5, total = 100 },
      --       easing = "linear",
      --     },
      --     -- what buffers to animate
      --     filter = function(buf)
      --       return vim.g.snacks_scroll ~= false
      --         and vim.b[buf].snacks_scroll ~= false
      --         and vim.bo[buf].buftype ~= "terminal"
      --     end,
      -- },
    },
  },
}

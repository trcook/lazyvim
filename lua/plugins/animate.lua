return {

  "sphamba/smear-cursor.nvim",
  enabled = true,
  opts = {
    stiffness = 1.0, -- 0.6      [0, 1]
    trailing_stiffness = 1.0, -- 0.45     [0, 1]
    stiffness_insert_mode = 1.0, -- 0.5      [0, 1]
    trailing_stiffness_insert_mode = 1.0, -- 0.5      [0, 1]
    damping = 1, -- 0.85     [0, 1]
    damping_insert_mode = 1.0,-- 1.0      [0, 1]
    distance_stop_animating = 0.1, -- 0.1      > 0
  },
  {
    "folke/snacks.nvim",

    opts = {
      {
        animate = {
          duration = { step = 5, total = 50 },
          easing = "linear",
        },
        -- faster animation when repeating scroll after delay
        animate_repeat = {
          delay = 100, -- delay in ms before using the repeat animation
          duration = { step = 5, total = 50 },
          easing = "linear",
        },
        -- what buffers to animate
        filter = function(buf)
          return vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= "terminal"
        end,
      },
    },
  },
}

return {

  "sphamba/smear-cursor.nvim",
  enabled = true,
  opts = {
    stiffness = 0.9, -- 0.6      [0, 1]
    trailing_stiffness = 0.8, -- 0.45     [0, 1]
  --   stiffness_insert_mode = 0.9, -- 0.5      [0, 1]
  --   trailing_stiffness_insert_mode = 0.9, -- 0.5      [0, 1]
    damping = 0.9, -- 0.85     [0, 1]
  --   damping_insert_mode = .9, -- 1.0      [0, 1]
    distance_stop_animating = 0.1, -- 0.1      > 0
  },
}

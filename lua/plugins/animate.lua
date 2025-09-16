return {

  "sphamba/smear-cursor.nvim",
  enabled=true,
  opts = {
    stiffness = 0.9, -- 0.6      [0, 1]
    trailing_stiffness = 0.7, -- 0.45     [0, 1]
    stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
    trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
    damping = 0.85, -- 0.85     [0, 1]
    damping_insert_mode = 0.95, -- 0.9      [0, 1]
    distance_stop_animating = 0.2, -- 0.1      > 0
  },
}

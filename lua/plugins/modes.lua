return {
  {
    "mvllow/modes.nvim",
    enabled =true,
    -- tag = "v0.2.1",
    config = function()
      require("modes").setup({
        colors = {
          -- bg = "#000000",
          -- insert = "#403a2e",
        },
        line_opacity = 0.15,
        set_cursor=false
      })
    end,
  },
  {
    "rasulomaroff/reactive.nvim",
    enabled=false,
    config = function()
      require("reactive").setup({
        load = { 'catppuccin-mocha-cursor', 'catppuccin-mocha-cursorline' }
        -- builtin = {
        --   cursorline = true,
        --   cursor = true,
        --   modemsg = true,
        -- },
      })
    end,
  },
}

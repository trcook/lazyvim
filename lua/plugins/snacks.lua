-- Terminal Mappings

return {
  {
    "snacks.nvim",
    opts = {
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      terminal = {
        win = {
          keys = {
            -- this is useful for disabling ctrl-k so that we can use kill to end of line in termaial
            nav_k = { "<C-k", mode = { "t" }, false },
          },
        },
      },
    },
    -- stylua: ignore
  },
}

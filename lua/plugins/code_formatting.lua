-- add options here to control how code is formatted/autoformatted
return {

  {
    "stevearc/conform.nvim",
    opts = {
      -- You need to set "vim.g.autoformat = false" in init.lua to permenantly disable autoformatting. it can still be run on with <leader>cf and it can still be turned back on with <leader>uf
      format_on_save = false,
      formatters_by_ft = {
        json = {  "prettier", stop_after_first = true },
        typst= {"prettypst",stop_after_first=true}
      },
    },
  },
}

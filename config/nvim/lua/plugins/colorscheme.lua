-- defer to iterm2 transparency
vim.g.srcery_bg = { "NONE", "NONE" }

return {
  { "srcery-colors/srcery-vim" },

  -- Configure LazyVim to load srcery
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "srcery",
    },
  },
}

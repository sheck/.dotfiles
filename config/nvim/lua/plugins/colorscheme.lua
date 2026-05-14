-- defer to iterm2 transparency
vim.g.srcery_bg = { "NONE", "NONE" }

return {
  -- v3.0.0 changes variable names and bg transparency doesn't work the same
  { "srcery-colors/srcery-vim", version = "^2.1" },

  -- Configure LazyVim to load srcery
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "srcery",
    },
  },
}

-- defer to iterm2 transparency
vim.g.srcery_bg = { "NONE", "NONE" }

return {
  { "srcery-colors/srcery-vim" },

  {
    "rcarriga/nvim-notify",
    -- Remove warning notification on startup from transparent bg
    opts = { background_colour = "#000000" },
  },

  -- Configure LazyVim to load srcery
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "srcery",
    },
  },
}

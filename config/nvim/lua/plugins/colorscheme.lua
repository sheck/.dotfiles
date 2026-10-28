-- defer to iterm2 transparency
vim.g.srcery_bg = { "NONE", "NONE" }

return {
  -- v3.0.0 changes variable names and bg transparency doesn't work the same
  { "srcery-colors/srcery-vim", version = "^2.1" },

  -- Neovim sets 'background' from the terminal's colors before config loads,
  -- so pick srcery for dark terminals and Buttercream Diner (colors/) for light
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.cmd.colorscheme(vim.o.background == "light" and "buttercream-diner" or "srcery")
      end,
    },
  },
}

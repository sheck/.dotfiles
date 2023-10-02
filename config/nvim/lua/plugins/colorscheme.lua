-- defer to iterm2 transparency
vim.g.srcery_bg_passthrough = 1

return {
  -- add srcery, use sha from before transparency was broken for terminal: https://github.com/srcery-colors/srcery-vim/pull/104
  { "srcery-colors/srcery-vim", commit = "755e4ab8a63ec2b4ea756a2fa128d642771369e5" },

  -- Configure LazyVim to load srcery
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "srcery",
    },
  },
}

-- Plugins that don't need to be in their own file just yet

return {
  {
    "echasnovski/mini.splitjoin",
    opts = {
      -- Use mappings from splitjoin.nvim to deconflict with flash.nvim
      mappings = {
        toggle = "",
        split = "g,",
        join = "gj",
      },
    },
  },
}

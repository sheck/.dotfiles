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

  {
    "vim-test/vim-test",
    keys = {
      { "<leader>tt", "<cmd>TestNearest<cr>", desc = "Test nearest" },
      { "<leader>tT", "<cmd>TestFile<cr>", desc = "Test file" },
      { "<leader>ta", "<cmd>TestSuite<cr>", desc = "Test suite" },
      { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test last" },
      { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Test visit" },
    },
  },
}

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

  { "tpope/vim-rails" },

  { import = "lazyvim.plugins.extras.test.core" },
  { import = "lazyvim.plugins.extras.dap.core" },

  -- {
  --   "vim-test/vim-test",
  --   keys = {
  --     { "<leader>tr", "<cmd>TestNearest<cr>", desc = "Test nearest" },
  --     { "<leader>tt", "<cmd>TestFile<cr>", desc = "Test file" },
  --     { "<leader>tT", "<cmd>TestSuite<cr>", desc = "Test suite" },
  --     { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test last" },
  --     { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Test visit" },
  --   },
  -- },
}

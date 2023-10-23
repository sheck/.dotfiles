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

  {
    "nvim-neotest/neotest",
    -- Known good sha before breaking issue on 10/20/23
    commit = "455155f65e3397022a7b23cc3e152b43a6fc5d23",
    optional = true,
    dependencies = {
      "olimorris/neotest-rspec",
    },
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          -- NOTE: By default neotest-rspec uses the system wide rspec gem instead of the one through bundler
          -- rspec_cmd = function()
          --   return vim.tbl_flatten({
          --     "bundle",
          --     "exec",
          --     "rspec",
          --   })
          -- end,
        },
      },
    },
  },

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

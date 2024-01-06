-- Plugins that don't need to be in their own file just yet

vim.g.autoformat = false

return {
  {
    "Wansmer/treesj",
    keys = {
      {
        "gj",
        function()
          require("treesj").join()
        end,
        desc = "Join code block",
      },
      {
        "g,",
        function()
          require("treesj").split()
        end,
        desc = "Split code block",
      },
    },
  },

  { "nvim-neotest/neotest-jest" },
  -- {
  --   "nvim-neotest/neotest",
  --   opts = { adapters = { "neotest-jest" } },
  -- },

  { "tpope/vim-rails" },
  -- For a better blame ui
  { "tpope/vim-fugitive" },
  -- For :GBrowse
  { "tpope/vim-rhubarb" },

  { import = "lazyvim.plugins.extras.test.core" },
  { import = "lazyvim.plugins.extras.dap.core" },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop", "prettier" },
      },
      format = {
        async = true,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- ruby-lsp underlines entire blocks (or classes!) when there are
        -- rubocop violations and changes the color. Disable to make the editor
        -- less annoying when editing older files.
        underline = false,
      },
      servers = {
        emmet_language_server = {},
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
  --   init = function()
  --     vim.cmd("let test#strategy = 'neovim'")
  --   end,
  -- },
}

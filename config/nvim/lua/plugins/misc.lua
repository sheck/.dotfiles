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

  { "tpope/vim-rails" },
  -- For a better blame ui
  { "tpope/vim-fugitive" },
  -- For :GBrowse
  { "tpope/vim-rhubarb" },

  { "slim-template/vim-slim" },

  -- { import = "lazyvim.plugins.extras.test.core" },
  -- { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.coding.mini-surround" },

  {
    "stevearc/conform.nvim",
    opts = {
      format = {
        -- Async true because autoformat is disabled and this only happens on
        -- manual invocation
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
      document_highlight = { enabled = false },
      servers = {
        emmet_language_server = {},
        svelte = {},
      },
    },
  },

  {
    "vim-test/vim-test",
    keys = {
      { "<leader>tr", "<cmd>TestNearest<cr>", desc = "Test nearest" },
      { "<leader>tt", "<cmd>TestFile<cr>", desc = "Test file" },
      { "<leader>tT", "<cmd>TestSuite<cr>", desc = "Test suite" },
      { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test last" },
      { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Test visit" },
    },
    init = function()
      vim.cmd("let test#strategy = 'neovim_sticky'")
    end,
  },

  -- {
  --   "nvim-neotest/neotest",
  --   optional = true,
  --   dependencies = {
  --     "vim-test/vim-test",
  --     "nvim-neotest/neotest-vim-test",
  --   },
  --   opts = {
  --     -- ~/.local/state/nvim/neotest.log
  --     log_level = "debug",
  --     adapters = { "neotest-vim-test" },
  --   },
  -- },
}

-- Plugins that don't need to be in their own file just yet

vim.g.autoformat = false

-- vim.g["test#neovim#start_normal"] = 1
-- vim.g["test#preserve_screen"] = 0

return {
  -- https://github.com/LazyVim/LazyVim/issues/6039#issuecomment-2856227817
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },

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

  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        -- Async true because autoformat is disabled and this only happens on
        -- manual invocation
        async = true,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
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
      vim.cmd("let test#strategy = 'neovim'")
    end,
  },
}

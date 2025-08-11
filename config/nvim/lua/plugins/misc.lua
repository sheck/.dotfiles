-- Plugins that don't need to be in their own file just yet

vim.g.autoformat = false

-- vim.g["test#neovim#start_normal"] = 1
-- vim.g["test#preserve_screen"] = 0

return {
  -- https://github.com/LazyVim/LazyVim/issues/6039#issuecomment-2856227817
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },

  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },

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

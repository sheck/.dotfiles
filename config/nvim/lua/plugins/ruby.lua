-- Replacement for lazyvim's ruby plugin

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "Shopify/ruby-lsp" },
    opts = {
      servers = {
        ruby_lsp = {
          init_options = {
            linters = { "rubocop" },
          },
        },
      },
    },
  },
}

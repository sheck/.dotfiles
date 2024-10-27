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
        -- _don't_ install with mason as that causes gem install errors when
        -- launching nvim after the initial install
        ruby_lsp = {
          mason = false,
          init_options = {
            linters = { "rubocop" },
          },
        },
      },
    },
  },
}

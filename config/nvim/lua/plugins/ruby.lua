-- Replacement for lazyvim's ruby plugin

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "ruby" } },
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
        },
        rubocop = {
          enabled = vim.fn.filereadable('.standard.yml') == 0,
          mason = false,
        },
        standardrb = {
          enabled = vim.fn.filereadable('.standard.yml') == 1,
          mason = false,
        },
        syntax_tree = {
          mason = false,
        },
      },
    },
  },
}

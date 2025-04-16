-- plugins/lsp.lua
return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup {
        ensure_installed = {
          'pyright', -- Python
          'tsserver', -- JavaScript
          'clangd', -- C++
        },
      }

      local lspconfig = require 'lspconfig'

      lspconfig.pyright.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.clangd.setup {}
    end,
  },
}

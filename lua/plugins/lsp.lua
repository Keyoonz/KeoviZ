return {
  {
    'mason-org/mason.nvim',
    opts = {},
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'lua_ls',
        'clangd',
        'harper_ls',
      },
      automatic_enable = {
        exclude = {
          'harper_ls',
        },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.harper_ls.setup { filetypes = { 'markdown' } }
    end,
  },
}

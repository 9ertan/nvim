return {
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'j-hui/fidget.nvim',
    },
    config = function()
      local cmp_lsp = require 'cmp_nvim_lsp'
      local capabilities =
        vim.tbl_deep_extend('force', {}, vim.lsp.protocol.make_client_capabilities(), cmp_lsp.default_capabilities())

      local lspconfig = require 'lspconfig'
      require('mason-lspconfig').setup {
        ensure_installed = {
          'lua_ls',
        },
        handlers = {
          function(server_name)
            local opts = {
              capabilities = capabilities,
            }

            if server_name == 'lua_ls' then
              opts = vim.tbl_deep_extend('force', opts, require 'plugins.lsp.settings.lua_ls')
            end
            -- elseif server_name == 'gopls' then
            --   opts = vim.tbl_deep_extend('force', opts, require 'plugins.lsp.settings.gopls')
            -- end

            lspconfig[server_name].setup(opts)
          end,
        },
      }

      local zls_opts = require 'plugins.lsp.settings.zls'
      lspconfig.zls.setup(vim.tbl_deep_extend('force', {
        capabilities = capabilities,
      }, zls_opts))

      require('fidget').setup {}

      vim.diagnostic.config {
        float = {
          style = 'minimal',
          border = 'rounded',
          header = '',
          prefix = '',
          source = true,
          focusable = false,
        },
      }
    end,
  },
  {},
}

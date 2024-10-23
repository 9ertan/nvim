return {
  'yioneko/nvim-cmp',
  branch = 'perf',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    {
      'garymjr/nvim-snippets',
      opts = {},
    },
  },
  opts = function()
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'

    return {
      completion = {
        completeopt = 'menu,menuone',
      },
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-l>'] = cmp.mapping.confirm { select = true, behavior = cmp.ConfirmBehavior.Insert },
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'snippets' },
        { name = 'path' },
      }, {
        { name = 'buffer', keyword_length = 4 },
      }),
    }
  end,
}

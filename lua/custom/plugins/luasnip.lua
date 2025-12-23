return {
  {
    'L3MON4D3/LuaSnip',
    build = 'make install_jsregexp', -- optional but improves some snippets
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end,
  },
}

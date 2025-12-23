return {
  'saghen/blink.cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },
  opts = {
    -- use LuaSnip explicitly (avoids the vim.snippet path completely)
    snippets = { preset = 'luasnip' },

    keymap = {
      preset = 'default',
      -- optional: nicer Tab behavior
      ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
    },

    appearance = { use_nvim_cmp_as_default = false },
    sources = { default = { 'lsp', 'path', 'buffer', 'snippets' } },
  },
}

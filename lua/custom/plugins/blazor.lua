return {
  {
    'seblyng/roslyn.nvim',

    opts = {

      extensions = {
        razor = {
          enabled = false,
        },
      },
    },

    init = function()
      vim.lsp.config('roslyn', {

        settings = {
          ['csharp|background_analysis'] = {
            dotnet_compiler_diagnostics_scope = 'openFiles',
          },
        },
      })
    end,
  },
}

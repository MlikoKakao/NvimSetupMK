return {
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        c = { 'clang_format' },
        cpp = { 'clang_format' },
      },
      formatters = {
        clang_format = {
          prepend_args = {
            '--style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman, IndentWidth: 4}',
          },
        },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = 'fallback',
      },
    },
  },
}

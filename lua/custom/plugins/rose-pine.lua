return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      variant = 'moon', -- "main", "moon", or "dawn"
      disable_background = true, --   makes Neovim background transparent
      highlight_groups = {
        Normal = { bg = 'none' },
        NormalNC = { bg = 'none' },
        NormalFloat = { bg = 'none' },
        FloatBorder = { bg = 'none' },
      },
    }

    vim.opt.termguicolors = true
    vim.cmd.colorscheme 'rose-pine'
  end,
}

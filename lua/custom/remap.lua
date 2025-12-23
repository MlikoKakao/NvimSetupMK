local map = vim.keymap.set

-- File explorer (neo-tree in Kickstart, or netrw if you prefer)
map('n', '<leader>pv', ':Neotree toggle<CR>', { desc = 'Project view (Neo-tree)' })

-- Keep cursor centered when jumping
map('n', 'J', 'mzJ`z')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Prev buffer' })

-- Paste over selection without clobbering register
map('x', '<leader>p', [["_dP]], { desc = 'Paste over (keep yank)' })

-- Clipboard / delete remaps
map({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to system clipboard' })
map('n', '<leader>Y', [["+Y]], { desc = 'Yank line to system clipboard' })
map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete to black-hole' })

-- Quality of life
map('i', '<C-c>', '<Esc>')
map('n', 'Q', '<nop>')

-- Quickfix/loclist nav
map('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Quickfix next' })
map('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Quickfix prev' })
map('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'Loclist next' })
map('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'Loclist prev' })

-- Substitute word under cursor
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Substitute word under cursor' })

-- Make file executable
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'chmod +x current file' })
local map = vim.keymap.set

-- File explorer (neo-tree in Kickstart, or netrw if you prefer)
map('n', '<leader>pv', ':Neotree toggle<CR>', { desc = 'Project view (Neo-tree)' })

-- Keep cursor centered when jumping
map('n', 'J', 'mzJ`z')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Paste over selection without clobbering register
map('x', '<leader>p', [["_dP]], { desc = 'Paste over (keep yank)' })

-- Clipboard / delete remaps
map({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to system clipboard' })
map('n', '<leader>Y', [["+Y]], { desc = 'Yank line to system clipboard' })
map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete to black-hole' })

-- Quality of life
map('i', '<C-c>', '<Esc>')
map('n', 'Q', '<nop>')

-- Quickfix/loclist nav
map('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Quickfix next' })
map('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Quickfix prev' })
map('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'Loclist next' })
map('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'Loclist prev' })

-- Substitute word under cursor
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Substitute word under cursor' })

-- Make file executable
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'chmod +x current file' })

-- Telescope extras
local tb = require 'telescope.builtin'

-- <C-p>: try git_files, fall back to find_files if not a git repo
vim.keymap.set('n', '<C-p>', function()
  local ok = pcall(tb.git_files, { show_untracked = true })
  if not ok then
    tb.find_files()
  end
end, { desc = 'Find files (git-aware)' })

-- <leader>sb: buffers list
vim.keymap.set('n', '<leader>sb', tb.buffers, { desc = '[S]earch [B]uffers' })

-- ~/.config/nvim/lua/custom/plugins/cpp.lua
return {
  -- Treesitter for C/C++
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { 'c', 'cpp' })
    end,
  },

  -- Debugging (nvim-dap) via gdb
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'
      dap.adapters.cpp = { type = 'executable', command = 'gdb', args = { '-i', 'dap' } }
      dap.configurations.cpp = {
        {
          name = 'Launch (gdb) build/hello',
          type = 'cpp',
          request = 'launch',
          program = function()
            return vim.fn.getcwd() .. '/build/hello'
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
        },
      }
      dap.configurations.c = dap.configurations.cpp
    end,
    dependencies = {
      {
        'rcarriga/nvim-dap-ui',
        config = function()
          local dap, dapui = require 'dap', require 'dapui'
          dapui.setup()
          dap.listeners.after.event_initialized['dapui_config'] = function()
            dapui.open()
          end
          dap.listeners.before.event_terminated['dapui_config'] = function()
            dapui.close()
          end
          dap.listeners.before.event_exited['dapui_config'] = function()
            dapui.close()
          end
        end,
      },
    },
  },
}

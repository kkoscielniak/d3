local fn = vim.fn

return {
  "nvim-telescope/telescope.nvim", 
  branch = '0.1.x', 
  dependencies = {
    'nvim-lua/plenary.nvim', 
    {
      'nvim-telescope/telescope-fzf-native.nvim', 
      build = "make", 
      cond = function()
        return fn.executable 'make' == 1
      end, 
    }
  }, 
  config = function() 
    require('telescope').setup {
      defaults = {
        i = {
          ['<C-u>'] = false, 
          ['<C-d>'] = false,
        --   ['<C-k>'] = actions.move_selection_previous, 
        --   ['<C-j>'] = actions.move_selection_next, 
        --   ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist, 
        }
      }
    }

    pcall(require('telescope').load_extension, 'fzf') -- enable `telescope-fzf` native if installed
  end
}

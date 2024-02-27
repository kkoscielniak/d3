return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
  config = function()
    require("telescope").setup {
      extensions = {
        file_browser = {
          hijack_netrw = true
        }
      }
    }

    require("telescope").load_extension "file_browser"

    local api = vim.api

    api.nvim_set_keymap("n", "<leader>f", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {
      noremap = true,
    })
  end
}

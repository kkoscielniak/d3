-- perhaps I shall move to telescope-diff.nvim at some point

local keymap = vim.keymap

return {
  'sindrets/diffview.nvim',
  config = function()
    require("diffview").setup()

    keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = '[G]it [D]iff' })
  end
}

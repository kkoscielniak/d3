local keymap = vim.keymap

keymap.set("n", "<leader>re", ":so $MYVIMRC<CR>") -- reload configuration

keymap.set("n", "<leader>fo", ":Format<CR>")      -- format file

-- Diffview.nvim
keymap.set("n", "<leader>gd", ":DiffviewOpen", {
  desc = '[G]it [D]iff'
})

-- keymap.set("n", "d", "_d")
-- keymap.set("n", "x", "d")
-- keymap.set('n', "x", o") -- prevent copying chars removed by `x` into clipboard

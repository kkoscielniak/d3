-- For the plugin-related keymaps go to their respective configuration files, e.g. Diffview.lua

local keymap = vim.keymap

-- keymap.set("n", "<leader>re", ":so $MYVIMRC<CR>") -- reload configuration (Not supported in lazy.nvim)

keymap.set("n", "<leader>fo", ":Format<CR>", { desc = "[Fo]rmat" }) -- format file

keymap.set("n", "<leader>sc", ":nohl<CR>", { desc = "[S]earch: [C]lear" })

-- tabs
keymap.set("n", "<leader>tc", ":tabnew<CR>", { desc = "[T]abs: [C]reate" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close [T]ab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "[T]abs: [N]ext" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "[T]abs: [P]revious" })

-- splits
-- note: [S] is used for both Splits and Search
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "[S]plit [V]ertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "[S]plit [H]orizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "Balance [S]plits" })
keymap.set('n', '<leader>sx', ':close<CR>', { desc = "Close [S]plit" })

-- TODO: Fix that
-- keymap.set("n", "d", "_d")
-- keymap.set("n", "x", "d")
-- keymap.set('n', "x", o") -- prevent copying chars removed by `x` into clipboard

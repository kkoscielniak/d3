vim.g.mapleader = " " -- make Space a <Leader> key instead of `\`

local keymap = vim.keymap

-- clear Search highlights
keymap.set('n', "<leader>nh", ":nohl<CR>")

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')

-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- maximize split

-- NvimTree
keymap.set('n', "<leader>e", ':NvimTreeToggle<CR>') -- show/hide NvimTree

-- Fuzzy finder
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>')   -- find text though the project
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>') -- find current string the cursor is on right now
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')     -- find in active buffers
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tahs<CR>')   -- help :)

-- VS Code habits lol
-- save file on CMD+S
keymap.set('i', '<D-s>', '<ESC>:w<CR>')

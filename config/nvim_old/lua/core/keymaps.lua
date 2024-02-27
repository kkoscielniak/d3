vim.g.mapleader = " " -- make Space a <Leader> key instead of `\`

local keymap = vim.keymap

-- general
-- keymap.set('i', 'jk', '<ESC>') -- what for? 

-- clear Search highlights
keymap.set('n', "<leader>nh", ":nohl<CR>")

-- prevent copying characters removed with `x` into register
-- keymap.set('n', 'x', '_x')

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')

-- splits management
keymap.set('n', '<leader>sv', '<C-w>v') -- split horizontally
keymap.set('n', '<leader>sh', '<C-w>s') -- split vertically
keymap.set('n', '<leader>se', '<C-w>=') -- balance windows
keymap.set('n', '<leader>sx', ':close<CR>') -- close current split

-- tabs management
keymap.set('n', '<leader>to', ':tabnew<CR>') -- new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- prev tab

-- plugin keymaps

-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- maximize split

-- NvimTree
keymap.set('n', "<leader>e", ':NvimTreeToggle<CR>') -- show/hide NvimTree

-- Fuzzy finder
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>') -- find text though the project
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>') -- find current string the cursor is on right now
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>') -- find in active buffers 
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tahs<CR>') -- help :) 

-- VS Code habits lol
-- save file on CMD+S
keymap.set('i', '<D-s>', '<ESC>:w<CR>')


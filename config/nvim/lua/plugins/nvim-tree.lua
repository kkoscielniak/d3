local setup, nvimTree = pcall(require, "nvim-tree")

if not setup then
	return
end

-- recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- colors
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- setup
nvimTree.setup({
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "+",
					arrow_open = "-",
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})

local opt = vim.opt

-- relative line numbers
opt.number = true
opt.relativenumber = true

-- line wrapping
opt.wrap = true

-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

-- enable "smart search"
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true -- highlight currently edited line

-- buffer splitting
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")           -- consider `-` a part of the word

opt.clipboard:append("unnamedplus") -- sync clipboards

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- ?

-- TODO what these options do:
-- opt.backspace = "indent,eol,start" -- ?
--

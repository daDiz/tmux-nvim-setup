vim.opt.exrc = true
vim.opt.hlsearch = false

vim.opt.autochdir = false

-- row number
vim.opt.relativenumber = true
vim.opt.number = true

-- indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- wrap off
vim.opt.wrap = false


-- cursor
vim.opt.cursorline = true

-- mouse
vim.opt.mouse:append("a")

-- copy and paste
vim.opt.clipboard:append("unnamedplus")

-- split windnow location
vim.opt.splitright = true
vim.opt.splitbelow = true


-- search ignore case
vim.opt.ignorecase = true
vim.opt.smartcase = true


-- color
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"


-- buffer settings
vim.b.fileencoding = "utf-8"


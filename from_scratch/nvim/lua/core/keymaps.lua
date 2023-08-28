vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- split window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })

-- navigate pane
keymap.set('n', '<c-l>', '<c-w>l')
keymap.set('n', '<c-h>', '<c-w>h')
keymap.set('n', '<c-j>', '<c-w>j')
keymap.set('n', '<c-k>', '<c-w>k')

-- nvimtree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>fo', ':NvimTreeFocus<CR>')

-- switch buffer
keymap.set("n", "<s-l>", ":bnext<CR>")
keymap.set("n", "<s-h>", ":bprevious<CR>")
-- keymap.set("n", "<leader>bd", "<cmd>bd<CR>") -- close buffer

-- resizing panes
keymap.set("n", "<s-Left>", ":vertical resize +1<CR>", { noremap = true, silent = true })
keymap.set("n", "<s-Right>", ":vertical resize -1<CR>", { noremap = true, silent = true })
keymap.set("n", "<s-Up>", ":resize -1<CR>", { noremap = true, silent = true })
keymap.set("n", "<s-Down>", ":resize +1<CR>", { noremap = true, silent = true })

-- yank
keymap.set({"v", "n"}, "<leader>y", "\"+y")


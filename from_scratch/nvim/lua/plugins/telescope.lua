require('telescope').setup {
  extensions = {
    menufacture = {
      mappings = {
        main_menu = { [{ 'i', 'n' }] = '<C-^>' },
      },
    },
  },
}
require('telescope').load_extension('dap')
require('telescope').load_extension('menufacture')

local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
-- vim.keymap.set('n', '<leader>fw', builtin.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find in current buffer"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "find help"})

vim.keymap.set('n', '<leader>ff', require('telescope').extensions.menufacture.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fw', require('telescope').extensions.menufacture.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fs', require('telescope').extensions.menufacture.grep_string, {desc = "find string"})
vim.keymap.set('n', '<leader>fg', require('telescope').extensions.menufacture.git_files, {desc = "find git"})



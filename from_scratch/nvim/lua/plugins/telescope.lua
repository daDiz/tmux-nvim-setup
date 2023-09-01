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
require("telescope").load_extension("recent_files")


local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
-- vim.keymap.set('n', '<leader>fw', builtin.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find buffer"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "find help"})

vim.keymap.set('n', '<leader>ff', require('telescope').extensions.menufacture.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fw', require('telescope').extensions.menufacture.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fs', require('telescope').extensions.menufacture.grep_string, {desc = "find string"})
vim.keymap.set('n', '<leader>fg', require('telescope').extensions.menufacture.git_files, {desc = "find git"})


-- search selected text by telescope
function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end


local keymap = vim.keymap.set
local tb = require('telescope.builtin')

-- keymap('n', '<leader>g', ':Telescope current_buffer_fuzzy_find<cr>',
--     { noremap = true, silent = true, desc = "search selected text in current buffer" })

keymap('v', '<leader>g', function()
	local text = vim.getVisualSelection()
	tb.current_buffer_fuzzy_find({ default_text = text })
end, { noremap = true, silent = true, desc = "search selected text in current buffer" })

-- keymap('n', '<leader>G', ':Telescope live_grep<cr>',
--     { noremap = true, silent = true, desc = "search selected text" })

keymap('v', '<leader>G', function()
	local text = vim.getVisualSelection()
	tb.live_grep({ default_text = text })
end, { noremap = true, silent = true, desc = "search selected text" })


-- short cut for recent files extension
vim.api.nvim_set_keymap("n", "<Leader><Leader>",
  [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
  {noremap = true, silent = true})


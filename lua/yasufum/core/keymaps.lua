vim.g.mapleader = " "  -- Make sure to set `mapleader` before lazy so your mappings are correct.

vim.api.nvim_set_keymap('t', '<Escape>', '<C-\\><C-n>', {silent = true})

-- TerminalをVSCodeのように現在のウィンドウの下に開く
vim.api.nvim_create_autocmd({'TermOpen'}, {
  command = 'startinsert',
})
vim.api.nvim_create_autocmd({'TermOpen'}, {
  command = 'set norelativenumber',
})
vim.api.nvim_create_autocmd({'TermOpen'}, {
  command = 'set nonumber',
})

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle <cr>', {silent = true})

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

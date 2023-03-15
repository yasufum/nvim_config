vim.g.mapleader = " "  -- Make sure to set `mapleader` before lazy so your mappings are correct.

vim.api.nvim_set_keymap('t', '<Escape>', '<C-\\><C-n>', {silent = true})

-- TerminalをVSCodeのように現在のウィンドウの下に開く
vim.api.nvim_create_autocmd({'TermOpen'}, {
  command = 'startinsert',
})

-- 常にインサートモードでTerminalを開く（水平分割）
vim.api.nvim_create_user_command(
'T', 'sp | wincmd j | resize 20 | terminal <args>', { nargs = '*' })
vim.api.nvim_set_keymap('n', 'T', ':T <cr>', { noremap = true })

-- 常にインサートモードでTerminalを開く（垂直分割）
vim.api.nvim_create_user_command(
'TS', 'vs | wincmd j | resize 100 | terminal <args>', { nargs = '*' })
vim.api.nvim_set_keymap('n', 'TS', ':TS <cr>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle <cr>', {silent = true})

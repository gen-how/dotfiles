-- See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
-- See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Delete character withtout save to register
vim.keymap.set({ 'n', 'v' }, 'x', '"_x')

-- Paste without overwriting the register
vim.keymap.set('v', 'p', 'P')

-- Indent without leaving visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Scroll the screen and center the cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Move lines up or down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<A-up>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<A-down>', ':m .+1<CR>==')
vim.keymap.set('v', '<A-down>', ":m '>+1<CR>gv=gv")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

-- Quick search & replace keymaps, the <Left> only works in native Neovim.
vim.keymap.set('n', '<leader>s', ':%s:\\C::gc<Left><Left><Left><Left>')
vim.keymap.set('n', '<leader><leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')
vim.keymap.set('v', '<leader>s', '"sy:%s:<C-r>s:<C-r>s:g<Left><Left>')

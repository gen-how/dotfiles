local vscode = require("vscode")

vim.keymap.set('n', '[d', function()
        vscode.call('editor.action.marker.prevInFiles')
    end,
    { desc = 'Go to previous [D]iagnostic message in VSCode' }
)

vim.keymap.set('n', ']d', function()
        vscode.call('editor.action.marker.nextInFiles')
    end,
    { desc = 'Go to next [D]iagnostic message in VSCode' }
)

vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
        vscode.call('workbench.view.explorer')
    end,
    { desc = 'Open [F]ile Explorer in VSCode' }
)

vim.keymap.set({ 'n', 'v' }, '<leader>v', function()
        vscode.call('workbench.action.openView')
    end,
    { desc = 'Open [V]iew in VSCode' }
)

vim.keymap.set({ 'n', 'v' }, '<leader>g', function()
        vscode.call('workbench.view.scm')
    end,
    { desc = 'Open [G]it in VSCode' }
)

-- Quick search & replace keymaps, the <Left> only works in native Neovim.
vim.keymap.set('n', '<leader>s', ':%s:\\C::gc')
vim.keymap.set('n', '<leader><leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI')
vim.keymap.set('v', '<leader>s', '"sy:%s:<C-r>s:<C-r>s:g')

-- Fix the 'n'/'N' movement remap to 'nzzzv' not working in VSCode.
-- https://github.com/vscode-neovim/vscode-neovim/issues/1909#issuecomment-2362783237
function MoveAndCenterize(key)
    return function()
        vim.cmd(':norm! ' .. key)
        local curr_line = vim.fn.line('.')
        vscode.call('revealLine', { args = { lineNumber = curr_line, at = 'center' } })
    end
end

vim.keymap.set('n', 'n', MoveAndCenterize('n'), { noremap = true, silent = true })
vim.keymap.set('n', 'N', MoveAndCenterize('N'), { noremap = true, silent = true })

-- Scroll the screen and center the cursor
-- https://github.com/vscode-neovim/vscode-neovim/issues/983
--   Not fixed yet.

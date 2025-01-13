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

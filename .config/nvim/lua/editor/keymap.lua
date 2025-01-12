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

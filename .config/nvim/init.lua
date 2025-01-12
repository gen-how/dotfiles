-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load settings
require("basic")
require("keymap")
require("autocmd")
require("config.lazy")

if vim.g.vscode then
    -- Load additional settings specific to VSCode.
    require("editor.keymap")
else
    -- Setup colorscheme
    vim.cmd.colorscheme("catppuccin")
end

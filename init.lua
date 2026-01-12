-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ctrl+A to Select All
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Ctrl+C to Copy selection to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

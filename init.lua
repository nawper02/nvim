-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ctrl+A to Select All
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Ctrl+C to Copy selection to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

-- LSP
require("lazy").setup({
  "neovim/nvim-lspconfig",
})

local lspconfig = require("lspconfig")

-- Basic setup for clangd
lspconfig.clangd.setup({
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
  },
})

-- Global mappings for LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to References" })

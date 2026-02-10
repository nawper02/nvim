-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ctrl+A to Select All
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Ctrl+C to Copy selection to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      -- This effectively "breaks" the feature for the server so it can't send hints
      client.server_capabilities.inlayHintProvider = false
      -- And this kills the UI side of it just in case
      if vim.lsp.inlay_hint then
        vim.lsp.inlay_hint.enable(false, { bufnr = args.buf })
      end
    end
  end,
})

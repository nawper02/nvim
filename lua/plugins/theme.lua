return {
  {
    "iagorrr/noctis-high-contrast.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- This theme is very high contrast by default
      vim.cmd("colorscheme noctishc")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noctishc",
    },
  },
}

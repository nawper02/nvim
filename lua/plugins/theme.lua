return {
  {
    "tpope/vim-vividchalk",
    lazy = false, -- Make sure it loads immediately
    priority = 1000, -- Make sure it loads before other plugins
    config = function()
      -- This sets the colorscheme when the plugin loads
      vim.cmd([[colorscheme vividchalk]])
    end,
  },
}

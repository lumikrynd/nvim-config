require(... .. ".bootstrap")

-- Setup lazy.nvim
require("lazy").setup({
  spec = { { import =  ... .. ".plugins" } },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "tokyonight-night" } },

  -- automatically check for plugin updates
  checker = { enabled = false },
})

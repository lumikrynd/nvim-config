require(... .. ".bootstrap")

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    {
      "nvim-telescope/telescope.nvim",
      tag = '0.1.8',
      dependencies = {
        "nvim-lua/plenary.nvim"
      }
    },
    {
      "nvim-treesitter/nvim-treesitter",
      tag = 'v0.9.2'--,
      --{build = ':TSUpdate'}
    }
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

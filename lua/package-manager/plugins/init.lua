return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    --tag = 'v0.9.2'--,
    --{build = ':TSUpdate'}
  },
  require( ... .. ".colorscheme"),
  require( ... .. ".oil"),
  require( ... .. ".tmux-navigator"),
}

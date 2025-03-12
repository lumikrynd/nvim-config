return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  require( ... .. ".treesitter"),
  require( ... .. ".colorscheme"),
  require( ... .. ".oil"),
  require( ... .. ".tmux-navigator"),
}

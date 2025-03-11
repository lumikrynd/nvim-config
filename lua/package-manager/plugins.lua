return {
  {
    "nvim-telescope/telescope.nvim",
    --tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    --tag = 'v0.9.2'--,
    --{build = ':TSUpdate'}
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      styles = {
        functions = {}
      },
      on_colors = function(colors)
        -- See https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua for original colors
        colors.border = "#333333"
        colors.bg_statusline = "#333333"
      end
    },
    init = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<Plug>tmux-left", "<cmd>TmuxNavigateLeft<cr>", mode = {"", "t"} },
      { "<Plug>tmux-down", "<cmd>TmuxNavigateDown<cr>", mode = {"", "t"} },
      { "<Plug>tmux-up", "<cmd>TmuxNavigateUp<cr>", mode = {"", "t"} },
      { "<Plug>tmux-right", "<cmd>TmuxNavigateRight<cr>", mode = {"", "t"} },
      { "<Plug>tmux-previous", "<cmd>TmuxNavigatePrevious<cr>", mode = {"", "t"} },
      { "<Plug>tmux-ps-list", "<cmd>TmuxNavigatorProcessList<cr>", mode = {"", "t"} },
    },
  }
}

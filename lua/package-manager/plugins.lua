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
  "folke/tokyonight.nvim",
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

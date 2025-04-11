return {
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
  init = function()
    vim.g.tmux_navigator_no_mappings = 1
  end,
}

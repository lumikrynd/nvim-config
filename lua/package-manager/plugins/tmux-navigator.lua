vim.pack.add({
  "https://github.com/christoomey/vim-tmux-navigator",
})

vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set({"", "t"}, "<Plug>tmux-left", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set({"", "t"}, "<Plug>tmux-down", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set({"", "t"}, "<Plug>tmux-up", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set({"", "t"}, "<Plug>tmux-right", "<cmd>TmuxNavigateRight<cr>")
vim.keymap.set({"", "t"}, "<Plug>tmux-previous", "<cmd>TmuxNavigatePrevious<cr>")
vim.keymap.set({"", "t"}, "<Plug>tmux-ps-list", "<cmd>TmuxNavigatorProcessList<cr>")

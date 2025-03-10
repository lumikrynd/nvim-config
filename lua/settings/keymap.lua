-- The apparantly important leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- visual mode move text block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- diverse movement rebinds with center vision
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", ",", ";")
vim.keymap.set("n", ";", ",")

-- keep the default register after paste
vim.keymap.set("x", "<leader>d", "\"_d")
vim.keymap.set("", "<leader>p", "\"_dP")

-- some yank preferences
vim.keymap.set("n", "Y", "y$")
vim.keymap.set({"n", "v"}, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y', { remap = true })

-- Easier goto mark
vim.keymap.set("n", "´", "`")
vim.keymap.set("n", "´´", "``")

-- since ctrl-] seems to be impossible in some guis...
vim.keymap.set("n", "<leader>g", "<c-]>")
vim.keymap.set("n", "<c-¨>", "<c-]>")

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- tmux integration
vim.keymap.set({"", "t"}, "<A-h>", "<Plug>tmux-left")
vim.keymap.set({"", "t"}, "<A-j>", "<Plug>tmux-down")
vim.keymap.set({"", "t"}, "<A-k>", "<Plug>tmux-up")
vim.keymap.set({"", "t"}, "<A-l>", "<Plug>tmux-right")

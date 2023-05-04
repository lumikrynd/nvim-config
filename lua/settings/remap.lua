-- The apparantly important leader key
vim.g.mapleader = " "

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


-- since ctrl-] seems to be impossible in some guis...
vim.keymap.set("n", "<leader>g", "<c-]>")

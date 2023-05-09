-- linebreak
vim.opt.wrap = true
vim.opt.lbr = true
vim.opt.breakindent = true
vim.opt.showbreak = ' @> '

-- line number
vim.opt.nu = true
vim.opt.rnu = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- smartindent
vim.opt.smartindent = true

-- modified search heighlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- prevents cursor hitting bottom or top edge
vim.opt.scrolloff = 8

-- command mode auto completion behaviour
vim.opt.wildmode = 'longest:full,full'

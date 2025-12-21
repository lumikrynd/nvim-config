-- line break
vim.opt.wrap = true
vim.opt.lbr = true
vim.opt.breakindent = true
vim.opt.showbreak = ' @> '

-- white space characters
vim.opt.list = true
vim.opt.listchars = 'tab:-->,lead:.,trail:_,multispace:...+,leadmultispace:...+,nbsp:%'

-- line number
vim.opt.nu = true
vim.opt.rnu = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = false

-- smart-indent
vim.opt.smartindent = true

-- modified search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- fold
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldmethod = "expr"
--vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 3
vim.opt.foldcolumn = "auto:1"
vim.opt.foldminlines = 3
vim.opt.foldopen = "hor,mark,percent,quickfix,search,tag,undo"

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- prevents cursor hitting bottom or top edge
vim.opt.scrolloff = 8

-- command mode auto completion behaviour
vim.opt.wildmode = 'longest:full,full'

-- visual
vim.opt.winborder = 'rounded'
vim.opt.showtabline = 2
vim.opt.tabline = ''
vim.opt.statusline = ''

-- Spelling
vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.opt.spelloptions = 'camel'

-- Diverse
vim.opt.nrformats='bin,hex,octal,blank,alpha'
vim.g.python_recommended_style = 0
vim.opt.formatoptions:remove {'o'}
vim.opt.verbose = 1

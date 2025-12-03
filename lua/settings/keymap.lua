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
vim.keymap.set("n", "<C-S-h>", "gT")
vim.keymap.set("n", "<C-S-l>", "gt")

vim.keymap.set("n", "*", "<Plug>custom-search-normal")
vim.keymap.set("v", "*", "<Plug>custom-search-visual")
vim.keymap.set({"n", "v"}, "#", "")

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

-- telescope
vim.keymap.set("n", "<leader>ff", "<Plug>telescope-find_files")
vim.keymap.set("n", "<leader>fg", "<Plug>telescope-git_files")
vim.keymap.set("n", "<leader>fr", "<Plug>telescope-live_grep")
vim.keymap.set("n", "<leader>fb", "<Plug>telescope-buffers")
vim.keymap.set("n", "<leader>ft", "<Plug>telescope-help_tags")

-- Splits
vim.keymap.set("n", "<C-w>%", "<C-w>v")
vim.keymap.set("n", "<C-w>\"", "<C-w>s")

-- lsp fun
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}
    local diagnostic_opts = {
      focusable = true,
      scope = 'cursor',
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter' },
    }

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'L', function() vim.diagnostic.open_float(nil, diagnostic_opts) end, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
    vim.keymap.set({'n', 'x'}, '<F3>', function() vim.lsp.buf.format{async = true} end, opts)
    vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, opts)
    vim.keymap.set("i", "<C-Space>", vim.lsp.completion.get, opts)
    vim.keymap.set("i", "<C-.>", vim.lsp.completion.get, opts)

    local error = vim.diagnostic.severity.ERROR
    local warning = vim.diagnostic.severity.WARN
    vim.keymap.set("n", "]g", function() vim.diagnostic.jump{count=1, float=true, severity=warning} end)
    vim.keymap.set("n", "[g", function() vim.diagnostic.jump{count=-1, float=true, severity=warning} end)
    vim.keymap.set("n", "]e", function() vim.diagnostic.jump{count=1, float=true, severity=error} end)
    vim.keymap.set("n", "[e", function() vim.diagnostic.jump{count=-1, float=true, severity=error} end)

    --[[
    Look into the following functions
    vim.lsp.buf.workspace_symbol() search for class and so on... see if it could be made to work with telescope
    vim.lsp.buf.typehierarchy() see inheritance
    vim.lsp.buf.signature_help -- what is the difference on this and buf.hover?
    vim.lsp.buf.type_definition() -- sometimes usefull to just go to the type
    vim.lsp.buf.outgoing_calls()
    vim.lsp.buf.incoming_calls()
    vim.lsp.buf.document_symbol -- kinda usefull I guess

    also figure out if I want these default binds:

    Some keymaps are created unconditionally when Nvim starts:
    - "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
    - "gra" is mapped in Normal and Visual mode to |vim.lsp.buf.code_action()|
    - "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
    - "gri" is mapped in Normal mode to |vim.lsp.buf.implementation()|
    - "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
    - CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|
    --]]
  end,
})


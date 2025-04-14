local util = require 'lspconfig.util'

local pid = vim.fn.getpid();

local function CreateConfig (name)
  return {
    cmd = {name, '--languageserver', '--hostPID', tostring(pid) },
    filetypes = { 'cs' },
    root_dir = function(bufnr, on_dir)
      local fname = vim.api.nvim_buf_get_name(bufnr)
      on_dir(util.root_pattern '*.sln'(fname) or util.root_pattern '*.csproj'(fname))
    end,
    settings = { },
  }
end

vim.lsp.config['csharp'] = CreateConfig('omnisharp-mono')
vim.lsp.enable('csharp')

vim.lsp.config['csharp-windows'] = CreateConfig('omnisharp')
vim.lsp.enable('csharp-windows')

local pid = vim.fn.getpid();
vim.lsp.config['csharp'] = {
  cmd = { 'omnisharp-mono', '--languageserver', '--hostPID', tostring(pid) },
  filetypes = { 'cs' },
  root_markers = { '.git' }, --haven't found a wildcard option
  settings = { },
}

vim.lsp.enable('csharp')

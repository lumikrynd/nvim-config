require(... .. '.luals')
--require(... .. '.csharp-ls') --done by roslyn plugin

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client == nil then return end

    -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
    end
  end,
})

vim.cmd[[set completeopt+=menuone,noselect]]

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  signs = true,
  virtual_lines = { current_line = true },
})


vim.lsp.enable('lua_ls')
--vim.lsp.enable('lua_ls_old')

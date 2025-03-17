--[[
local status,lsp = pcall(require, 'lsp-zero')

if not status then
  print("lsp-zero configuration skipped")
  return
end

lsp.preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
--]]

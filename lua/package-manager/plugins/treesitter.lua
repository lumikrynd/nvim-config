-- hook for updating
vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  local update = kind == 'install' or kind == 'update'

  -- Run build script after plugin's code has changed
  if name == "nvim-treesitter" and update then
    vim.cmd("TSUpdate")
  end
end})


vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "main",
  },
})

require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install {
  "lua",
  "vimdoc",
  "c_sharp",
  "sql",
  "rust",
}

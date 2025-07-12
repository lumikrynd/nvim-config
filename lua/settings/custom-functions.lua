local function search_normal()
  local yank = vim.fn.expand("<cword>")
  local with_boundary = '\\<' .. yank .. "\\>"
  vim.fn.setreg("/", with_boundary)
  print("/" .. with_boundary)

end

local function search_visual()
  local p1 = vim.fn.getpos('.')
  local p2 = vim.fn.getpos('v')
  local yank = vim.fn.getregion(p1, p2)
  local full = "\\V"
  for _, v in ipairs(yank) do  -- Table iteration.
    full = full .. v .. "\\n"
  end
  full = string.sub(full, 1, -3)
  vim.fn.setreg("/", full)
  vim.cmd('normal! ')
  print("/" .. full)
end

vim.keymap.set("n", "<Plug>custom-search-normal", search_normal)
vim.keymap.set("v", "<Plug>custom-search-visual", search_visual)

vim.pack.add({
  "https://github.com/echasnovski/mini.icons",
  "https://github.com/stevearc/oil.nvim",
})

require('mini.icons').setup()

local opts = {
  default_file_explorer = true, --it's here if I need to turn it off
  git = {
    -- Return true to automatically git add/mv/rm files
    mv = function(src_path, dest_path) return true end,
  },
}

require("oil").setup(opts)

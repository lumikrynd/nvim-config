return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true, --it's here if I need to turn it off
    git = {
      -- Return true to automatically git add/mv/rm files
      mv = function(src_path, dest_path) return true end,
    },
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
}

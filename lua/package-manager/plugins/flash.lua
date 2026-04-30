vim.pack.add({
  "https://github.com/folke/flash.nvim",
})

local opts = {
  highlight = {
    backdrop = false,
  },
  modes = {
    char = {
      enabled = true,
      keys = {
        "f",
        "F",
        "t",
        "T",
        [";"] = ",",
        [","] = ";",
      },
      highlight = { backdrop = false },
    },
  },
};

local flash = require("flash");
flash.setup(opts)

vim.keymap.set("", "<Plug>flash", flash.jump )
vim.keymap.set("", "<Plug>flash-treesitter", flash.treesitter )
vim.keymap.set("", "<Plug>flash-remote", flash.remote )
vim.keymap.set("", "<Plug>flash-treesitter-search", flash.treesitter_search )
vim.keymap.set("", "<Plug>flash-toggle", flash.toggle )

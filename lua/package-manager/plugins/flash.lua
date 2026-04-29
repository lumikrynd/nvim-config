return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
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
  },
  keys = function()
    local flash = require("flash");

    return {
      { "<Plug>flash", mode = {""}, flash.jump },
      { "<Plug>flash-treesitter", mode = {""}, flash.treesitter },
      { "<Plug>flash-remote", mode = {""}, flash.remote },
      { "<Plug>flash-treesitter-search", mode = {""}, flash.treesitter_search },
      { "<Plug>flash-toggle", mode = {""},flash.toggle },
    }
  end,
}

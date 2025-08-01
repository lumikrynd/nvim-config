return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    styles = {
      functions = {}
    },
    on_colors = function(colors)
      -- See https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua for original colors
      colors.border = "#333333"
      colors.bg_statusline = "#333333"
    end,
    on_highlights = function(hl, c)
      hl.Whitespace.fg = "Purple"
      hl.StatusLine.bg = "#444444"
      hl.StatusLineNC.fg = "#505a84"
    end,
  },
  init = function()
    vim.cmd([[colorscheme tokyonight-night]])
  end,
}

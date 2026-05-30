vim.pack.add({
  "https://github.com/folke/tokyonight.nvim",
})

local opts = {
  style = "night",
  styles = {
    functions = {}
  },
  on_colors = function(colors)
    -- See https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua for original colors
    colors.bg = "NONE"
    colors.border = "#333333"
    colors.bg_statusline = "#333333"
  end,
  on_highlights = function(hl, c)
    hl.Whitespace.fg = "Purple"
    hl.StatusLine.bg = "#444444"
    hl.StatusLineNC.fg = "#505a84"
    hl.DiagnosticUnnecessary.fg = "#d37baa"
    hl.SpellBad.sp = "#f026f3"

    --backgrounds (or at least colors which was set to the same)
    hl.BufferCurrent.bg = "NONE"
    hl.BufferCurrentADDED.bg = "NONE"
    hl.BufferCurrentCHANGED.bg = "NONE"
    hl.BufferCurrentDELETED.bg = "NONE"
    hl.BufferCurrentERROR.bg = "NONE"
    hl.BufferCurrentHINT.bg = "NONE"
    hl.BufferCurrentINFO.bg = "NONE"
    hl.BufferCurrentIndex.bg = "NONE"
    hl.BufferCurrentMod.bg = "NONE"
    hl.BufferCurrentSign.bg = "NONE"
    -------- hl.BufferCurrentSign.fg = "NONE"
    hl.BufferCurrentTarget.bg = "NONE"
    hl.BufferCurrentWARN.bg = "NONE"
    hl.FoldColumn.bg = "NONE"
    hl.MiniStarterItem.bg = "NONE"
    hl.Normal.bg = "NONE"
    hl.NormalNC.bg = "NONE"
    hl.NotifyBackground.bg = "NONE"
    hl.NotifyDEBUGBody.bg = "NONE"
    hl.NotifyDEBUGBorder.bg = "NONE"
    hl.NotifyERRORBody.bg = "NONE"
    hl.NotifyERRORBorder.bg = "NONE"
    hl.NotifyINFOBody.bg = "NONE"
    hl.NotifyINFOBorder.bg = "NONE"
    hl.NotifyTRACEBody.bg = "NONE"
    hl.NotifyTRACEBorder.bg = "NONE"
    hl.NotifyWARNBody.bg = "NONE"
    hl.NotifyWARNBorder.bg = "NONE"
    hl.SignColumn.bg = "NONE"
    hl.SnacksNotifierBorderDebug.bg = "NONE"
    hl.SnacksNotifierBorderError.bg = "NONE"
    hl.SnacksNotifierBorderInfo.bg = "NONE"
    hl.SnacksNotifierBorderTrace.bg = "NONE"
    hl.SnacksNotifierBorderWarn.bg = "NONE"
    hl.SnacksNotifierDebug.bg = "NONE"
    hl.SnacksNotifierError.bg = "NONE"
    hl.SnacksNotifierInfo.bg = "NONE"
    hl.SnacksNotifierTrace.bg = "NONE"
    hl.SnacksNotifierWarn.bg = "NONE"
  end,
};

require("tokyonight").setup(opts)

vim.cmd([[colorscheme tokyonight-night]])

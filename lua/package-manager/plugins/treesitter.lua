return {
  "nvim-treesitter/nvim-treesitter",
  build = ':TSUpdate',
  opts = {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
      "lua",
      "vimdoc",
      "c_sharp",
      "sql",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = {
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  },
  init = function()
    local istatus,install = pcall(require, 'nvim-treesitter.install')
    if not (istatus) then
      print("nvim-treesitter configuration skipped")
      return
    end
    install.prefer_git = false
  end,
}

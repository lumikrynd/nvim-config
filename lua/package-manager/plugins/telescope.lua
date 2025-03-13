local function better_live_grep() end

local bstatus, builtin
local function set_better_live_grep()
  function better_live_grep()
    builtin.live_grep {
      glob_pattern = {
        "!**/.git/COMMIT_EDITMSG",
        "!**/.git/FETCH_HEAD",
        "!**/.git/HEAD",
        "!**/.git/ORIG_HEAD",
        "!**/.git/gitk.cache",
        "!**/.git/index",
        "!**/.git/packed-refs",
        "!**/.git/info",
        "!**/.git/logs",
        "!**/.git/objects",
        "!**/.git/refs",
        --see https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md#configuration-file
      },
      additional_args = {
        "--hidden"
      },
    }
  end
end

local fileSettings = {
  --hidden = true,
}

local function Unhide(func)
  local function inner()
    func(fileSettings)
  end

  return inner
end

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        --"%.git",
        --"%.git\\objects\\",
        --"%.git\\refs\\",
        --"%.git\\logs\\",
        --"%.git\\[%w_]*",
      },
    },
  },
  init = function()
    bstatus,builtin = pcall(require, 'telescope.builtin')

    if not (bstatus) then
      print("telescope configuration skipped")
      return
    end

    set_better_live_grep()

    vim.keymap.set('n', '<leader>ff', Unhide(builtin.find_files), {})
    vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
    vim.keymap.set('n', '<leader>fr', better_live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>ft', builtin.help_tags, {})

    --{hidden=true, layout_config={prompt_position="top"}}
    --builtin.man_pages
  end,
}

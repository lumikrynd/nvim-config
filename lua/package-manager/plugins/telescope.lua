local telescope, builtin

local function better_live_grep() end

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

local opts = {
  defaults = {
    file_ignore_patterns = {
      --"%.git",
      --"%.git\\objects\\",
      --"%.git\\refs\\",
      --"%.git\\logs\\",
      --"%.git\\[%w_]*",
    },
  },
}

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local tstatus,bstatus
    tstatus,telescope = pcall(require, 'telescope')
    bstatus,builtin = pcall(require, 'telescope.builtin')

    if not (tstatus and bstatus) then
      print("telescope configuration skipped")
      return
    end

    telescope.setup(opts)

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

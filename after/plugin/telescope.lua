local tstatus,telescope = pcall(require, 'telescope')
local bstatus,builtin = pcall(require, 'telescope.builtin')

if not (tstatus and bstatus) then
  print("telescope configuration skipped")
  return
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

local function better_live_grep()
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

vim.keymap.set('n', '<leader>ff', Unhide(builtin.find_files), {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fr', better_live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ft', builtin.help_tags, {})

telescope.setup{
  defaults = {
    file_ignore_patterns = {
      --"%.git",
      --"%.git\\objects\\",
      --"%.git\\refs\\",
      --"%.git\\logs\\",
      --"%.git\\[%w_]*",
    }
  },
}


--{hidden=true, layout_config={prompt_position="top"}}
--builtin.man_pages

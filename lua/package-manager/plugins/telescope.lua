local function get_better_live_grep()
  -- Can't for the love of god figure out how to pass in builtin's type if given as an argument
  -- Just fetch it here instead for better autocomplete
  local builtin = require("telescope.builtin")
  return function()
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

--todo either make this work or remove it...
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
    mappings = {
      n = {
        -- ["<esc>"] = require('telescope.actions').close,
        -- TODO, rebind alt-q to ctrl-q (quickfix add)
      }
    }
  },
}

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    telescope.setup(opts)

    local livegrep = get_better_live_grep()

    vim.keymap.set("n", "<Plug>telescope-find_files", Unhide(builtin.find_files), {})
    vim.keymap.set("n", "<Plug>telescope-git_files", builtin.git_files, {})
    vim.keymap.set("n", "<Plug>telescope-live_grep", livegrep, {})
    vim.keymap.set("n", "<Plug>telescope-buffers", builtin.buffers, {})
    vim.keymap.set("n", "<Plug>telescope-help_tags", builtin.help_tags, {})

    --{hidden=true, layout_config={prompt_position="top"}}
    --builtin.man_pages
  end,
}

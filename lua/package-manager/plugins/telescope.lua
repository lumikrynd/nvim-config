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

local fileSettings = {
  --hidden = true,
}

local function Unhide(func)
  local function inner()
    func(fileSettings)
  end

  return inner
end

local function get_opts()
  local actions = require('telescope.actions')
  return {
    defaults = {
      mappings = {
        n = {
          ["<M-q>"] = false,
          ["<M-f>"] = false,
          ["<M-k>"] = false,
          ["<c-d>"] = false,
          ["<c-f>"] = false,
          ["<c-u>"] = false,
          ["<c-x>"] = false,
          ["L"] = false,
          ["H"] = false,
          ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<C-k>"] = actions.preview_scrolling_up,
          ["<C-j>"] = actions.preview_scrolling_down,
          ["<C-h>"] = actions.preview_scrolling_left,
          ["<C-l>"] = actions.preview_scrolling_right,
          ["<C-b>"] = actions.select_horizontal,
        },
      },
      file_ignore_patterns = {
        --"%.git",
        --"%.git\\objects\\",
        --"%.git\\refs\\",
        --"%.git\\logs\\",
        --"%.git\\[%w_]*",
      },
    },
    pickers = {
      buffers = {
        mappings = {
          n = {
            ["<M-d>"] = false,
            ["<C-d>"] = actions.delete_buffer,
          },
        },
      },
    },
  }
end

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup(get_opts())

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

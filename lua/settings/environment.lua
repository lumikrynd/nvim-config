-- because backup files in same directory royally sucks

--[[
local function GetPaths (type)
  function GetIfExist (env, path)
    local full = "$" .. env .. "/" .. path .. "//, ";
    return os.getenv(env) and full or ''
  end

  local full = ''

  full = full .. GetIfExist( 'XDG_STATE_HOME', 'nvim/' .. type)
  full = full .. GetIfExist( 'TMPDIR', 'nvim/' .. type)
  full = full .. GetIfExist( 'TMP', 'nvim/' .. type)
  full = full .. GetIfExist( 'TEMP', 'nvim/' .. type)
  full = full .. '.'

  return full;
end

--local k = '$XDG_STATE_HOME/nvim/backup//, $TMPDIR/nvim/backup//, $TMP/nvim/backup//, $TEMP/nvim/backup//, .'
--print(k)
--k = vim.fn.expand(k)
--print(k)

local backup, swp, undo

backup = GetPaths 'backup'
backup = vim.fn.expand(backup)
print(backup)

swp = GetPaths 'swp'
swp = vim.fn.expand(swp)

undo = GetPaths 'undo'
undo = vim.fn.expand(undo)
--]]

-- to many damn errors, turning everything off for now
vim.opt.backupdir = ""
vim.opt.directory = ""
vim.opt.undodir = ""
vim.opt.shada = ""

vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false

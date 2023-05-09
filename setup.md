### Configs
Remember to set `XDG_CONFIG_HOME` in the environment variables for windows.

### Installing Packer
Needs to be cloned to `XDG_DATA_HOME` or default.

`git clone https://github.com/wbthomason/packer.nvim "$env:XDG_DATA_HOME\nvim-data\site\pack\packer\opt\packer.nvim"`
`git clone https://github.com/wbthomason/packer.nvim "$env:USERPROFILE\AppData\Local\nvim-data\site\pack\packer\opt\packer.nvim"`

### Using Packer

Run `:so` in file `lua/plugins/init.lua` followed by `:PackerSync`

### GREP for Telescope
See `https://github.com/BurntSushi/ripgrep#installation`

### compiler for treesitter
´choco install mingw´

local path = ...;

function register(name)
  local file = path .. ".plugins." .. name
  return pcall(require, file)
end

register("blink-completion")
register("color-preview")
register("colorscheme")
register("flash")
register("lspconfig")
register("mason")
register("mini-ai")
register("mini-surround")
register("oil")
register("roslyn")
register("telescope")
register("tmux-navigator")
register("treesitter")

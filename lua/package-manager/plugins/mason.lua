vim.pack.add({
  "https://github.com/williamboman/mason.nvim",
})

local opts = {
  registries = {
    "github:mason-org/mason-registry",
    "github:Crashdummyy/mason-registry",
  },
};

require("mason").setup(opts)

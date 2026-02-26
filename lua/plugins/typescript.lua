return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = false,
        ts_ls = false,
        tsserver = false,
        tsgo = {},
      },
    },
  },
}

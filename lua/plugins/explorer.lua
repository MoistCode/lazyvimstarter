return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          layout = { preset = "sidebar" },
        },
        grep = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}

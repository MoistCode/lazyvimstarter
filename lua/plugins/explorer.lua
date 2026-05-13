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
          exclude = {
            "build",
            ".nx",
            "dist",
            "out",
            "node_modules",
            ".next",
            ".nuxt",
            "target",
            "__pycache__",
          },
        },
      },
    },
  },
}

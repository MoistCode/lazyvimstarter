return {
  "folke/snacks.nvim",
  opts = {
    styles = {
      lazygit = {
        width = 0,
        height = 0,
        border = "none",
        backdrop = false,
      },
    },
    picker = {
      -- Override the built-in presets to be fullscreen. Sources that opt
      -- into a different preset (e.g. explorer → "sidebar") are untouched.
      layouts = {
        default = {
          layout = {
            width = 0,
            height = 0,
            border = "none",
            backdrop = false,
          },
        },
        vertical = {
          layout = {
            width = 0,
            height = 0,
            border = "none",
            backdrop = false,
          },
        },
      },
    },
  },
}

return {
  "folke/snacks.nvim",
  opts = {
    styles = {
      -- Make all floating windows fullscreen
      float = {
        width = 0,
        height = 0,
        border = "none",
        backdrop = false,
      },
      lazygit = {
        width = 0,
        height = 0,
        border = "none",
        backdrop = false,
      },
    },
    picker = {
      layout = {
        -- Override the default picker layout to be fullscreen
        preset = "default",
        layout = {
          width = 0,
          height = 0,
          border = "none",
          backdrop = false,
        },
      },
    },
  },
}

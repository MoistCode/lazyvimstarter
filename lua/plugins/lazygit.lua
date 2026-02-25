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
  },
  keys = {
    { "<leader>lg", function() Snacks.lazygit({ cwd = LazyVim.root.git() }) end, desc = "LazyGit" },
  },
}

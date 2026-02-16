return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- actionlint only applies to GitHub workflow YAML files,
        -- so we scope it in the condition below rather than all yaml
      },
    },
    config = function(_, opts)
      local lint = require("lint")
      lint.linters_by_ft = vim.tbl_deep_extend("force", lint.linters_by_ft or {}, opts.linters_by_ft or {})

      -- Run actionlint only on GitHub workflow files
      vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost" }, {
        pattern = ".github/workflows/*.yml,.github/workflows/*.yaml",
        callback = function()
          lint.try_lint("actionlint")
        end,
      })
    end,
  },
  -- Ensure actionlint is installed via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "actionlint" },
    },
  },
}

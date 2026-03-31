return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local c = opts.sections.lualine_c
      if c and #c > 0 then
        c[#c] = { "filename", path = 3, shorting_target = 0 }
      end
    end,
  },
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      sources = {
        explorer = {
          exclude = { ".git" },
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
}

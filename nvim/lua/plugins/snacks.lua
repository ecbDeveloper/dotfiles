return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { ".git" },
          layout = {
            layout = {
              position = "right",
            },
          },
        },
        finder = {
          exclude = { ".git", "node_modules", "*venv" },
        },
      },
    },
  },
}

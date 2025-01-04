return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        custom_highlights = function(colors)
          return {
            WinSeparator = { fg = "#edf3f1", bg = "NONE" }, -- Set border foreground to white
          }
        end,
        transparent_background = true, -- disables setting the background color.
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm",
      on_colors = function(colors)
        -- colors.border = "#FF8C00"
        colors.border = "#edf3f1"
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}

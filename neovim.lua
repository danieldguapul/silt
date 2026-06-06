return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      disable_italics = false,
      colors = {
        base00 = "#1a1812",
        base01 = "#3b3b32",
        base02 = "#5a9db3",
        base03 = "#3b3b32",
        base04 = "#d2cbbe",
        base05 = "#d2cbbe",
        base06 = "#e0d4bf",
        base07 = "#e0d4bf",
        base08 = "#b5786a",
        base09 = "#c4a87a",
        base0A = "#c4a87a",
        base0B = "#7d9a7e",
        base0C = "#5a8a94",
        base0D = "#3e6a7d",
        base0E = "#8b7a8b",
        base0F = "#d4be8a",
      },
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}

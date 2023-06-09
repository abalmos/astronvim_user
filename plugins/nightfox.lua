return {
  "EdenEast/nightfox.nvim",
  name = "nightfox.nvim",
  opts = {
    options = {
      dim_inactive = true,
      styles = { comments = "italic" },
    },
    specs = {
      all = {
        telescope = {
          bg_alt = "bg2",
          bg = "bg1",
          fg = "fg1",
          green = "green",
          red = "red",
        },
      },
    },
    groups = {
      all = {
        HighlightURL = { style = "underline" },
        MiniIndentscopeSymbol = { link = "PreProc" },
        NormalFloat = { link = "Normal" },
        TelescopeBorder = { fg = "telescope.bg_alt", bg = "telescope.bg" },
        TelescopeNormal = { bg = "telescope.bg" },
        TelescopePreviewBorder = { fg = "telescope.bg", bg = "telescope.bg" },
        TelescopePreviewTitle = { fg = "telescope.bg", bg = "telescope.green" },
        TelescopePromptBorder = { fg = "telescope.bg_alt", bg = "telescope.bg_alt" },
        TelescopePromptNormal = { fg = "telescope.fg", bg = "telescope.bg_alt" },
        TelescopePromptPrefix = { fg = "telescope.red", bg = "telescope.bg_alt" },
        TelescopePromptTitle = { fg = "telescope.bg", bg = "telescope.red" },
        TelescopeResultsBorder = { fg = "telescope.bg", bg = "telescope.bg" },
        TelescopeResultsTitle = { fg = "telescope.bg", bg = "telescope.bg" },
      },
    },
  },
}

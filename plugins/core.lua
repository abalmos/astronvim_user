return {
  { "goolord/alpha-nvim", enabled = false },
  { "max397574/better-escape.nvim", enabled = false },

  -- {"lukas-reineke/indent-blankline.nvim", enabled = false },
  -- { "numToStr/Comment.nvim", enabled = false },

  ["ggandor/leap.nvim"] = {
    config = function() require("leap").set_default_keymaps() end,
  },
  { "ethanholz/nvim-lastplace" },

  { "ray-x/lsp_signature.nvim" },

  {
    "simrat39/rust-tools.nvim",
  },
  ["Saecki/crates.nvim"] = {
    opts = function()
      require("crates").setup()

      astronvim.add_user_cmp_source "crates"
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    opts = {
      terminal_mappings = false,
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 0,
    },
  },
  {
    "mrjones2014/smart-splits.nvim",
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signcolumn = false,
      numhl = true,
      current_line_blame_opts = { ignore_whitespace = true },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          always_show = { ".github", ".gitignore" },
        },
      },
    },
  },
}

return {
  {
    "echasnovski/mini.move",
    keys = {
      { "<M-l>", mode = { "n", "v" } },
      { "<M-k>", mode = { "n", "v" } },
      { "<M-j>", mode = { "n", "v" } },
      { "<M-h>", mode = { "n", "v" } },
    },
    config = function(_, opts)
      require("mini.move").setup(opts)
      -- require("mini.bufremove").setup()
      -- require("mini.comment").setup()
      -- require("mini.jump").setup()
      -- require("mini.surround").setup()
      -- require("mini.indentscope").setup {
      --   draw = { delay = 0, animation = require("mini.indentscope").gen_animation.none() },
      --   options = { indent_at_cursor = false },
      --   symbol = "▏",
      -- }
      -- local gen_spec = require("mini.ai").gen_spec
      -- require("mini.ai").setup {
      --   custom_textobjects = {
      --     ["*"] = gen_spec.pair("*", "*", { type = "greedy" }),
      --     ["_"] = gen_spec.pair("_", "_", { type = "greedy" }),
      --     F = gen_spec.treesitter { a = "@function.outer", i = "@function.inner" },
      --     x = gen_spec.treesitter { a = "@class.outer", i = "@class.inner" },
      --   },
      -- }
    end,
  },
  {
    "arsham/indent-tools.nvim",
    dependencies = { "arsham/arshlib.nvim" },
    event = "User AstroFile",
    config = function() require("indent-tools").config {} end,
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    opts = {
      snippet_engine = "luasnip",
      languages = {
        lua = { template = { annotation_convention = "emmylua" } },
        python = { template = { annotation_convention = "google_docstrings" } },
        typescript = { template = { annotation_convention = "tsdoc" } },
        typescriptreact = { template = { annotation_convention = "tsdoc" } },
        rust = { template = { annotation_convention = "rustdoc" } },
      },
    },
  },
  {
    "lukas-reineke/headlines.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = "markdown",
    opts = {},
  },
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
      ignore_lsp = { "lua_ls", "julials" },
    },
    config = function(_, opts) require("project_nvim").setup(opts) end,
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    opts = {},
  },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = {
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = function()
      local prefix = "<leader>s"
      return {
        mapping = {
          send_to_qf = { map = prefix .. "q" },
          replace_cmd = { map = prefix .. "c" },
          show_option_menu = { map = prefix .. "o" },
          run_current_replace = { map = prefix .. "C" },
          run_replace = { map = prefix .. "R" },
          change_view_mode = { map = prefix .. "v" },
          resume_last_search = { map = prefix .. "l" },
        },
      }
    end,
  },
  { "junegunn/vim-easy-align", event = "User AstroFile" },
  { "machakann/vim-sandwich", event = "User AstroFile" },
  { "wakatime/vim-wakatime", event = "User AstroFile" },
}

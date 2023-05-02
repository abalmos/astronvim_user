return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", -- Lua
        "bashls", -- Bash
        "ltex", -- LangaugeTools Spell Check
        "pyright", -- Python
        "rust_analyzer", -- Rust
        "cssls", -- CSS
        "html", -- HTML
        "jsonls", -- JSON
        "marksman", -- Markdown
        "svelte", -- Svelte
        "tailwindcss", -- Tailwind
        "tsserver", -- TypeScript
        "texlab", -- LaTeX
        "yamlls", -- YAML
        "clangd", -- C
        "taplo", -- TOML
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "gitsigns", -- Git
        "shellcheck", -- Sh/bash
        "stylua", -- Lua
        "black", -- Python
        "isort", -- Python (import sort)
        "prettierd", -- Prettier (Javascript, Typescript, Svelte, etc.)
        "shfmt", -- Shell
        "cue_fmt", -- Cue
        "eslint_d", -- Javascript
        "hadolint", -- Dockerfile
      },
      handlers = {
        taplo = function() end, -- disable taplo in null-ls, it's taken care of by lspconfig

        prettierd = function()
          require("null-ls").register(
            require("null-ls").builtins.formatting.prettierd.with { extra_filetypes = { "svelte" } }
          )
        end,

        eslint_d = function()
          require("null-ls").builtins.diagnostics.eslint_d.with {
            extra_args = { "--eslint-path", ".yarn/sdks/eslint/lib/api.js" },
          }
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "cppdbg",
        "delve",
        "js",
        "python",
      },
    },
  },
}

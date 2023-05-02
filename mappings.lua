local utils = require "user.utils"

local mappings = {
  n = {
    ["<C-\\>"] = { ":ToggleTerm<cr>", desc = "Toggle Terminal" },
    j = { "gj", desc = "Navigate down in wraps" },
    k = { "gk", desc = "Navigate up in wraps" },

    -- better buffer navigation
    ["]b"] = false,
    ["[b"] = false,
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- better search
    n = { utils.better_search "n", desc = "Next search" },
    N = { utils.better_search "N", desc = "Previous search" },

    -- resize with arrows
    -- ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    -- ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    -- ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    -- ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
    --
    ["<leader>x"] = { desc = "裂Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },
  },

  x = {},
  o = {},

  v = {
    j = { "gj", desc = "Navigate down in wraps" },
    k = { "gk", desc = "Navigate up in wraps" },
  },
  t = {
    ["<C-BS>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
}

-- add more text objects for "in" and "around"
for _, char in ipairs { "_", ".", ":", ",", ";", "|", "/", "\\", "*", "+", "%", "`", "?" } do
  for _, mode in ipairs { "x", "o" } do
    mappings[mode]["i" .. char] =
      { string.format(":<C-u>silent! normal! f%sF%slvt%s<CR>", char, char, char), desc = "between " .. char }
    mappings[mode]["a" .. char] =
      { string.format(":<C-u>silent! normal! f%sF%svf%s<CR>", char, char, char), desc = "around " .. char }
  end
end

return mappings

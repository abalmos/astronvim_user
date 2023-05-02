return {
  disabled = { "lua_ls" },
  format_on_save = { ignore_filetypes = { "julia" } },
  filter = function(client)
    -- Don't run null-ls on markdown
    if vim.bo.filetype == "markdown" then return client.name ~= "null-ls" end

    return true
  end,
}

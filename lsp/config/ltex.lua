return {
  on_attach = function()
    require("ltex_extra").setup {
      load_langs = { "en-US" },
      init_check = true,
      path = ".ltex",
    }
  end,
  settings = {
    ltex = {
      completionEnabled = true,
      statusBarItem = true,
      additionalRules = {
        enablePickyRules = true,
        languageModel = "/home/abalmos/.local/share/ltex/ngrams",
      },
    },
  },
}

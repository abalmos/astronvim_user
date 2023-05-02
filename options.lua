return {
  opt = {
    -- Don't use the mouse to interact with nvim
    mouse = "",

    foldenable = false,

    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",

    spellfile = vim.fn.expand "~/.config/nvim/lua/user/spell/en.utf-8.add",
    thesaurus = vim.fn.expand "~/.config/nvim/lua/user/spell/thesaurus.txt",

    swapfile = false,

    showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1,

    wrap = true, -- soft wrap lines
    relativenumber = false,

    -- Don't yank/cut into system clipboard by default
    clipboard = "",
  },
  g = {
    resession_enabled = true,
  },
}

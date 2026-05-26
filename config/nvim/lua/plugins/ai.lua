return {
  "pablopunk/pi.nvim",
  cmd = { "PiAsk", "PiAskSelection", "PiCancel", "PiLog" },
  keys = {
    { "<leader>aq",  ":PiAsk<CR>",          mode = "n", desc = "Ask pi" },
    { "<leader>aq",  ":PiAskSelection<CR>", mode = "v", desc = "Ask pi (selection)" },
    { "<leader>apq", ":PiCancel<CR>",       mode = "n", desc = "Cancel pi request" },
    { "<leader>apl", ":PiLog<CR>",          mode = "n", desc = "Open pi log" },
  },
  opts = {
    provider = "anthropic",
    model = "claude-haiku-4-5",   -- fast + cheap for quick questions; bump to sonnet if you want
    thinking = "off",              -- the README explicitly warns this kills the "quick" feel
    context = {
      diagnostics = { enabled = true }, -- LSP diagnostics in context is genuinely useful
    },
  },
}

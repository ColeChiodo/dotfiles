-- lua/plugins/gitsigns.lua
require("gitsigns").setup({
    signs = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "" },
        topdelete    = { text = "" },
        changedelete = { text = "▎" },
    },
    numhl = false,
    linehl = false,
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,
})

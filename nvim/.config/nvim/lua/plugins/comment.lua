-- lua/plugins/comment.lua
require("Comment").setup({
    -- Add mappings like `gcc` for line comment, `gbc` for block comment
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    -- Enable sticky cursor
    sticky = true,
    -- Ignore empty lines
    ignore = nil,
})


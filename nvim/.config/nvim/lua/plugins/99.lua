-- lua/plugins/99.lua
local _99 = require("99")

local cwd = vim.uv.cwd()
local basename = vim.fs.basename(cwd)
_99.setup({
    model = "opencode/minimax-m2.5-free",
    logger = {
        level = _99.DEBUG,
        path = "/tmp/" .. basename .. ".99.debug",
        print_on_error = true,
    },

    tmp_dir = "./tmp",

    completion = {
        custom_rules = {
            "scratch/custom_rules/",
        },
        source = "native",
    },

    md_files = {
        "AGENT.md",
    },
})

local cmp_nvim_lsp = require("cmp_nvim_lsp")

local capabilities = cmp_nvim_lsp.default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- =========================
-- LSP DEFINITIONS (NEW API)
-- =========================

vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
        "--completion-style=detailed",
        "--function-arg-placeholders=1",
    },

    filetypes = { "c", "cpp", "objc", "objcpp" },

    root_dir = vim.fs.root(0, { ".git", "." }),

    single_file_support = true,

    capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },

    capabilities = capabilities,
})

vim.lsp.config("pyright", {
    capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
    capabilities = capabilities,
})

vim.lsp.config("vtsls", {
    capabilities = capabilities,
})

vim.lsp.config("vue_ls", {
    filetypes = {
        "vue",
        "typescript",
        "javascript",
        "typescriptreact",
        "javascriptreact",
    },

    init_options = {
        typescript = {
            serverPath = vim.fn.stdpath("data")
                .. "/mason/packages/typescript-language-server/node_modules/typescript/lib/tsserverlibrary.js"
        },
    },

    capabilities = capabilities,
})

vim.lsp.config("gopls", {
    capabilities = capabilities,

    settings = {
        gopls = {
            gofumpt = true,
            staticcheck = true,
            usePlaceholders = true,
        },
    },
})

vim.lsp.config("htmx", {
    filetypes = {
        "html",
        "templ",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
    },

    capabilities = capabilities,
})

vim.lsp.config("cssls", {
    capabilities = capabilities,
})

vim.lsp.config("typos_lsp", {
    capabilities = capabilities,
})

vim.lsp.config("harper_ls", {
    capabilities = capabilities,
})

vim.lsp.config("marksman", {
    capabilities = capabilities,
})

vim.lsp.config("jsonls", {
    capabilities = capabilities,
})

vim.lsp.config("bashls", {
    capabilities = capabilities,
})

vim.lsp.config("dockerls", {
    capabilities = capabilities,
})

vim.lsp.config("docker_compose_language_service", {
    capabilities = capabilities,
})

vim.lsp.config("ols", {
    capabilities = capabilities,
})

-- enable servers
vim.lsp.enable({
    "clangd",
    "lua_ls",
    "pyright",
    "ts_ls",
    "vtsls",
    "vue_ls",
	"gopls",
    "htmx",

    "cssls",
    "typos_lsp",
    "harper_ls",
    "marksman",
    "jsonls",
    "bashls",
    "dockerls",
    "docker_compose_language_service",

	"ols",
})

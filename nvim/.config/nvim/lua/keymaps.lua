local map = vim.keymap.set

-- Type arrows with keymap
map("i", "<C-l>", "->", { desc = "Insert ->" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>:Telescope live_grep<cr>")
map("n", "<leader>fd", "<cmd>Telescope lsp_document_symbols<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>fm", "<cmd>:Telescope media_files<cr>")

-- File tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- 99
map("v", "<leader>9v", function()
	require("99").visual()
end)
map("n", "<leader>9x", function()
	require("99").stop_all_requests()
end)
map("n", "<leader>9s", function()
	require("99").search()
end)
map("n", "<leader>9m", function()
	require("99.extensions.telescope").select_model()
end)

-- Gitsigns
local gs = require("gitsigns")
map("n", "]c", function()
	if vim.wo.diff then return "]c" end
	vim.schedule(function() gs.next_hunk() end)
end, { expr = true })
map("n", "[c", function()
	if vim.wo.diff then return "[c" end
	vim.schedule(function() gs.prev_hunk() end)
end, { expr = true })
map({"n", "v"}, "<leader>hs", gs.stage_hunk)
map({"n", "v"}, "<leader>hr", gs.reset_hunk)
map("n", "<leader>hS", gs.stage_buffer)
map("n", "<leader>hu", gs.undo_stage_hunk)
map("n", "<leader>hR", gs.reset_buffer)
map("n", "<leader>hp", gs.preview_hunk)
map("n", "<leader>hb", function() gs.blame_line{full=true} end)
map("n", "<leader>hd", gs.diffthis)
map("n", "<leader>hD", function() gs.diffthis("~") end)

-- Diagnostic / error-warning navigation
map("n", "<leader>dh", function()
  local diags = vim.diagnostic.get(0, {lnum = vim.fn.line(".") - 1})
  if #diags > 0 then
    local msgs = vim.tbl_map(function(d) return d.message end, diags)
    vim.api.nvim_echo({{table.concat(msgs, "\n"), "DiagnosticWarn"}}, false, {})
  end
end)
map("n", "<leader>dj", function() vim.diagnostic.jump({count = 1}) end)
map("n", "<leader>dk", function() vim.diagnostic.jump({count = -1}) end)

-- LSP
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "gi", "<cmd>Telescope lsp_implementation<CR>")
map("n", "gr", "<cmd>Telescope lsp_references<CR>")
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>dl", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- Tuxedo
map("n", "<leader>tt", "<cmd>Tuxedo<CR>")

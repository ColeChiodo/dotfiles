-- lua/settings.lua
-- General editor settings

local opt = vim.opt

-- =====================
-- Tabs and indentation
-- =====================

-- Use spaces instead of tabs
opt.expandtab = false

-- Number of spaces per tab
opt.tabstop = 4        -- how many spaces a tab counts for
opt.shiftwidth = 4     -- how many spaces to use for autoindent
opt.softtabstop = 4    -- how many spaces a <Tab> counts for in insert mode

-- Optional: auto-indent smartly
opt.smartindent = true

-- =====================
-- Line numbers
-- =====================
opt.number = true         -- show absolute line numbers
opt.relativenumber = true -- show relative numbers

-- =====================
-- Colors / UI
-- =====================
opt.termguicolors = true  -- enable 24-bit colors
opt.cursorline = true     -- highlight current line

-- =====================
-- Search
-- =====================
opt.ignorecase = true     -- ignore case in search
opt.smartcase = true      -- except when uppercase letters are used
opt.incsearch = true      -- show matches while typing
opt.hlsearch = true       -- highlight all matches

-- =====================
-- Split windows
-- =====================
opt.splitright = true     -- vertical splits go to the right
opt.splitbelow = true     -- horizontal splits go below

-- =====================
-- Clipboard
-- =====================
opt.clipboard = "unnamedplus" -- use system clipboard

-- =====================
-- Misc
-- =====================
opt.scrolloff = 8        -- keep 8 lines visible above/below cursor
opt.signcolumn = "yes"   -- always show sign column

opt.showmode = false

opt.wrap = true
opt.linebreak = true
opt.breakindent = true


local function rename_tmux_window()
  local file = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")

  if file == "" then
    file = "nvim"
  end

  if os.getenv("TMUX") then
    vim.fn.system({
      "tmux",
      "rename-window",
      file
    })
  end
end

vim.api.nvim_create_autocmd({
  "BufEnter",
  "BufWinEnter",
}, {
  callback = rename_tmux_window,
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    if os.getenv("TMUX") then
      vim.fn.system({ "tmux", "rename-window", "shell" })
    end
  end,
})

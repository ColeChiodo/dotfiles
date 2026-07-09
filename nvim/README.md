# nvim

My Neovim configuration, managed with [lazy.nvim](https://github.com/folke/lazy.nvim).
![NVIM example](../.resources/nvim.png)

## Features

| | |
|---|---|
| **Completion** | nvim-cmp with LSP, buffer, and path sources, plus LuaSnip snippets |
| **LSP** | clangd, lua_ls, pyright, ts_ls / vtsls, vue_ls — installed via Mason |
| **Treesitter** | Parsers for bash, c, cpp, lua, python, js/ts, json, html, css, vue |
| **Fuzzy finding** | Telescope with fzf-native, plus media file picker |
| **File tree** | nvim-tree with devicons |
| **Git** | Gitsigns for hunks, blame, and diffs in the gutter |
| **Statusline** | Lualine with gruvbox theme |
| **AI assistant** | [99](https://github.com/ThePrimeagen/99) by ThePrimeagen |
| **Typing** | vim-be-good practice game |
| **Markdown** | Live preview in the browser |
| **Misc** | Autopairs, Comment.nvim, neoscroll.nvim (smooth scrolling), gruvbox colorscheme (soft contrast, transparent) |

## Keymaps

Leader is `<Space>`.

### Telescope

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fd` | Document symbols |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |
| `<leader>fm` | Media files |

### File tree

| Key | Action |
|---|---|
| `<leader>e` | Toggle nvim-tree |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Hover info |
| `<leader>rn` | Rename |
| `<leader>dl` | Code action |
| `<leader>dh` | Show line diagnostic |
| `<leader>dj` / `<leader>dk` | Next / prev diagnostic |

### Git

| Key | Action |
|---|---|
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff this |
| `]c` / `[c` | Next / prev hunk |

### AI (99)

| Key | Action |
|---|---|
| `<leader>9v` | Invoke on visual selection |
| `<leader>9s` | Search |
| `<leader>9m` | Select model |

### Completion

| Key | Action |
|---|---|
| `<C-Space>` | Force complete |
| `<C-j>` / `<C-k>` | Next / prev item |
| `<Tab>` / `<S-Tab>` | Snippet expand / jump |

### Tuxedo (Todolist)

| Key | Action |
|---|---|
| `<leader>tt` | Open Todo List |

## Settings

- Real tabs, `tabstop=4`, `shiftwidth=4`
- Relative line numbers with cursorline
- Case-insensitive smart search
- System clipboard (`unnamedplus`)
- Transparent background
- `scrolloff=8`, `signcolumn=yes`
- Line wrap with `breakindent`

## Structure

```
.config/nvim/
├── init.lua                # Entry point
├── lazy-lock.json          # Plugin lockfile
└── lua/
    ├── settings.lua        # Editor options
    ├── keymaps.lua         # Key mappings
    └── plugins/
        ├── init.lua        # Plugin list (incl. neoscroll.nvim)
        ├── 99.lua, cmp.lua, comment.lua, gitsigns.lua,
        ├── lsp.lua, nvimtree.lua, statusline.lua,
        ├── telescope.lua, treesitter.lua
```


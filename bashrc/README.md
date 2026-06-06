# bashrc

![bashrc Example](../.resources/bashrc.png)

## Features

- **Theme**: powerline-multiline
- **Completions**: git, composer, ssh
- **Plugins**: git, bashmarks
- **Editor**: neovim, vi mode with visual INSERT/NORMAL indicators
- **Keybindings**: vi mode with mode-aware prompt
- **Overrides**: Machine-specific aliases (e.g. SSH hosts) go in `~/.bashrc_local` — not tracked in this repo

## Custom items

- **Git aliases**: `ga` (add), `gc` (commit -m), `gp` (push), `gpl` (pull), `gcl` (clone)
- **Esp-IDF**: `espidf` sources the ESP-IDF environment from `/opt/esp-idf/export.sh`
- **Tetris**: `$HOME/.local/bin` is on PATH for tetris (and other local binaries)
- **Go**: `$HOME/.local/go/bin` is on PATH
- **`cmd` function**: Reads `.commands` in the current directory and runs/eval's a command by key — `cmd action` runs the action, `cmd action -e` prints the command
- **`fuz`**: Fuzzy-find a file with fzf and open it in neovim (`fzf --preview="cat {}" | xargs -r nvim`)
- **`mochifetch`**: Runs neofetch with a custom ASCII logo at `~/.config/neofetch/logo`

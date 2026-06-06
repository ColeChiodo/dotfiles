# Oh My Bash

The only edits I made to oh-my-bash is the `powerline-multiline` theme for a cleaner, flat look with a custom palette.
![powerline theme edit](../.resources/powerline.png)

## Changes from upstream

### theme.sh
- **Removed powerline separators** — `POWERLINE_LEFT_SEPARATOR` and `POWERLINE_RIGHT_SEPARATOR` set to empty strings for a flat/minimal look
- **Prompt char** changed from `❯` to `•`
- **Colors** switched from terminal 256-color codes to custom hex values for a cohesive Gruvbox-inspired dark theme:
  - User info: `32` → `#a9b665` (green)
  - SCM clean: `25` → `#6c782e` (dark green)
  - SCM dirty: `88` → `#c14a4a` (dark red)
  - SCM staged: `30` → `#b47109` (muted gold)
  - SCM unstaged: `92` → `#a0522d` (muted orange)
  - CWD/Clock: `240` → `#303536` (dark gray)
  - User secondary: `-` → `#1d2021` (near-black)
- **Added vi mode indicator colors** (`VI_MODE_THEME_PROMPT_INSERT_COLOR`, `VI_MODE_THEME_PROMPT_NORMAL_COLOR`)
- **Removed trailing space** on `SCM_GIT_CHAR`

### base.sh
- **Flat design** — removed `POWERLINE_LEFT_SEPARATOR` and `POWERLINE_RIGHT_SEPARATOR` usage entirely
- **Reduced right segment padding** from `2` to `1`
- **Removed extra padding** for non-first right segments (the `((padding += 1))` in the else branch)

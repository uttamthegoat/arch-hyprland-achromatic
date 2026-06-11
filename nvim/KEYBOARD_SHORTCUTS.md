# Neovim Keyboard Shortcuts

This document lists all **custom** key mappings from your Neovim configuration.

**Leader Key:** `<Space>`

---

## Core Keymaps (`core/keymaps.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<Space>` | n, v | Leader key (Space default disabled) |
| `<C-s>` | n | Save file (`:w`) |
| `<leader>sn` | n | Save file without auto-formatting |
| `<C-q>` | n | Quit file (`:q`) |
| `x` | n | Delete character without copying to register |
| `<C-d>` | n | Scroll down half page and center cursor |
| `<C-u>` | n | Scroll up half page and center cursor |
| `n` | n | Next search match and center cursor |
| `N` | n | Previous search match and center cursor |
| `<Up>` | n | Resize window: decrease height by 2 |
| `<Down>` | n | Resize window: increase height by 2 |
| `<Left>` | n | Resize window: decrease width by 2 |
| `<Right>` | n | Resize window: increase width by 2 |
| `<Tab>` | n | Next buffer |
| `<S-Tab>` | n | Previous buffer |
| `<leader>x` | n | Close (delete) current buffer |
| `<leader>b` | n | New buffer |
| `<leader>v` | n | Split window vertically (`<C-w>v`) |
| `<leader>h` | n | Split window horizontally (`<C-w>s`) |
| `<leader>se` | n | Equalize split window sizes (`<C-w>=`) |
| `<leader>xs` | n | Close current split window (`:close`) |
| `<C-k>` | n | Navigate to window above (`:wincmd k`) |
| `<C-j>` | n | Navigate to window below (`:wincmd j`) |
| `<C-h>` | n | Navigate to window left (`:wincmd h`) |
| `<C-l>` | n | Navigate to window right (`:wincmd l`) |
| `<leader>to` | n | Open new tab |
| `<leader>tx` | n | Close current tab |
| `<leader>tn` | n | Go to next tab |
| `<leader>tp` | n | Go to previous tab |
| `<leader>lw` | n | Toggle line wrapping |
| `<` | v | Indent left and stay in visual mode (`<gv`) |
| `>` | v | Indent right and stay in visual mode (`>gv`) |
| `p` | v | Paste without overwriting register (`"_dP`) |
| `[d` | n | Go to previous diagnostic message |
| `]d` | n | Go to next diagnostic message |
| `<leader>d` | n | Open floating diagnostic message |
| `<leader>q` | n | Open diagnostics list (location list) |
| `<leader>t` | n | Open terminal in horizontal split |

---

## Telescope (`plugins/telescope.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>sh` | n | Search help tags |
| `<leader>sk` | n | Search keymaps |
| `<leader>sf` | n | Search files (find files) |
| `<leader>ss` | n | Search select Telescope |
| `<leader>sw` | n | Search current word |
| `<leader>sg` | n | Search by live grep |
| `<leader>sd` | n | Search diagnostics |
| `<leader>sr` | n | Resume last Telescope picker |
| `<leader>s.` | n | Search recent files |
| `<leader><leader>` | n | Find existing buffers |
| `<leader>/` | n | Fuzzily search in current buffer |
| `<leader>s/` | n | Live grep in open files |
| `<C-k>` | i (Telescope) | Move to previous result |
| `<C-j>` | i (Telescope) | Move to next result |
| `<C-l>` | i (Telescope) | Open selected file |
| `?` | n (Telescope) | Show picker keymaps help |

---

## LSP (`plugins/lsp.lua`)

*Note: These are set per-buffer when an LSP server attaches.*

| Shortcut | Mode | Description |
|----------|------|-------------|
| `grn` | n | Rename symbol |
| `gra` | n, x | Code action |
| `grD` | n | Go to declaration |
| `<leader>th` | n | Toggle inlay hints (if supported by LSP) |

---

## Autocompletion — nvim-cmp (`plugins/autocompletion.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-n>` | i | Select next completion item |
| `<C-p>` | i | Select previous completion item |
| `<C-b>` | i | Scroll documentation backward |
| `<C-f>` | i | Scroll documentation forward |
| `<C-y>` | i | Accept (confirm) completion |
| `<C-Space>` | i | Manually trigger completion |
| `<C-l>` | i, s | Expand or jump forward in snippet |
| `<C-h>` | i, s | Jump backward in snippet |
| `<Tab>` | i, s | Next item / expand snippet (fallback to default) |
| `<S-Tab>` | i, s | Previous item / jump back (fallback to default) |

---

## Autoformatting — Conform (`plugins/autoformatting.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>f` | n | Format current buffer |

---

## Comments (`plugins/comment.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-_>` | n | Toggle line comment (Ctrl+/) |
| `<C-c>` | n | Toggle line comment |
| `<C-/>` | n | Toggle line comment |
| `<C-_>` | v | Toggle line comment on selection (Ctrl+/) |
| `<C-c>` | v | Toggle line comment on selection |
| `<C-/>` | v | Toggle line comment on selection |

---

## Colorscheme (`plugins/colortheme.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>bg` | n | Toggle background transparency |

---

## Salesforce (`plugins/sf.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>sp` | n | SF: Push current file to org |
| `<leader>sr` | n | SF: Retrieve current file from org |
| `<leader>sd` | n | SF: Diff local file vs org |
| `<leader>ss` | n | SF: Set target org |

---

## AI Autocompletion — Minuet (`plugins/ai-autocompletion.lua`)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<Tab>` | i | Accept AI autocompletion |
| `<A-e>` | i | Dismiss AI autocompletion (Alt+E) |

---

## Notes & Abbreviations

| Abbreviation | Meaning |
|--------------|---------|
| `n` | Normal mode |
| `i` | Insert mode |
| `v` | Visual mode |
| `s` | Select mode |
| `<leader>` | Leader key (`<Space>`) |
| `<C-...>` | Ctrl + key |
| `<S-...>` | Shift + key |
| `<A-...>` | Alt / Meta key |
| `i (Telescope)` | Insert mode while inside a Telescope picker |
| `n (Telescope)` | Normal mode while inside a Telescope picker |

---

## Non-Configured Plugins (Defaults)

The following plugins are installed but use **default keymaps** (no custom bindings):

- **`which-key.nvim`** — Shows available keymap hints automatically.
- **`vim-tmux-navigator`** — Default `<C-h>`/`<C-j>`/`<C-k>`/`<C-l>` for tmux/navigation (overridden by your custom wincmd maps in `core/keymaps.lua`).
- **`nvim-autopairs`** — Automatically closes brackets/quotes (no keymaps).
- **`vim-fugitive`/ `vim-rhubarb`** — Git commands (used via ex-commands like `:G`, `:Git`).
- **`gitsigns.nvim`** — Adds gutter signs; no custom keymaps defined.
- **`bufferline.nvim`** — Visual tab bar; no custom keymaps defined.
- **`indent-blankline.nvim`** — Indent guides; no keymaps.
- **`todo-comments.nvim`** — Highlight todos; no keymaps.
- **`nvim-colorizer.lua`** — Color preview; no keymaps.

---

---

## Default Neovim / Vim Shortcuts

These are built-in shortcuts available in any standard Neovim/Vim installation.

### Basic Movement

| Shortcut | Mode | Description |
|----------|------|-------------|
| `h` | n, v | Move cursor left |
| `j` | n, v | Move cursor down |
| `k` | n, v | Move cursor up |
| `l` | n, v | Move cursor right |
| `gg` | n | Go to top of file |
| `G` | n | Go to bottom of file |
| `0` | n, v | Go to start of line |
| `^` | n, v | Go to first non-blank character |
| `$` | n, v | Go to end of line |
| `w` | n, v | Jump forward to start of word |
| `e` | n, v | Jump forward to end of word |
| `b` | n, v | Jump backward to start of word |
| `f{char}` | n, v | Jump to next occurrence of {char} on line |
| `F{char}` | n, v | Jump to previous occurrence of {char} on line |
| `t{char}` | n, v | Jump to just before next {char} on line |
| `T{char}` | n, v | Jump to just after previous {char} on line |
| `;` | n, v | Repeat last f/F/t/T jump |
| `,` | n, v | Repeat last f/F/t/T jump in reverse |
| `%` | n, v | Jump to matching bracket/parenthesis |
| `}` | n, v | Jump to next paragraph |
| `{` | n, v | Jump to previous paragraph |
| `H` | n | Move cursor to top of screen |
| `M` | n | Move cursor to middle of screen |
| `L` | n | Move cursor to bottom of screen |
| `<C-f>` | n | Scroll down one page |
| `<C-b>` | n | Scroll up one page |
| `<C-d>` | n | Scroll down half page (default before override) |
| `<C-u>` | n | Scroll up half page (default before override) |
| `<C-e>` | n | Scroll screen up one line (cursor stays) |
| `<C-y>` | n | Scroll screen down one line (cursor stays) |

### Insert Mode

| Shortcut | Mode | Description |
|----------|------|-------------|
| `i` | n | Enter insert mode before cursor |
| `I` | n | Enter insert mode at start of line |
| `a` | n | Enter insert mode after cursor |
| `A` | n | Enter insert mode at end of line |
| `o` | n | Open new line below and enter insert mode |
| `O` | n | Open new line above and enter insert mode |
| `s` | n | Delete character under cursor and enter insert mode |
| `S` | n | Delete entire line and enter insert mode |
| `c{motion}` | n | Change (delete and insert) |
| `C` | n | Change to end of line |
| `cc` | n | Change entire line |
| `<Esc>` | i | Return to normal mode |
| `<C-[>` | i | Return to normal mode |
| `<C-c>` | i | Return to normal mode (like Esc) |
| `<C-o>` | i | Execute one normal mode command |
| `<C-a>` | i | Insert last inserted text |
| `<C-w>` | i | Delete word before cursor |
| `<C-u>` | i | Delete to start of line |
| `<C-t>` | i | Indent current line |
| `<C-d>` | i | Unindent current line |
| `<C-n>` | i | Next completion (default before cmp) |
| `<C-p>` | i | Previous completion (default before cmp) |
| `<C-x>` | i | Start completion mode |
| `<C-r>=` | i | Insert expression register |
| `<C-k>` | i | Insert digraph |
| `<C-v>` | i | Insert literal character |
| `<C-e>` | i | Insert character below cursor |
| `<C-y>` | i | Insert character above cursor |

### Editing & Text Manipulation

| Shortcut | Mode | Description |
|----------|------|-------------|
| `dd` | n | Delete (cut) current line |
| `D` | n | Delete (cut) to end of line |
| `yy` | n | Yank (copy) current line |
| `Y` | n | Yank (copy) to end of line |
| `p` | n | Paste after cursor |
| `P` | n | Paste before cursor |
| `xp` | n | Swap character under cursor with next |
| `J` | n | Join current line with next |
| `gJ` | n | Join current line with next (no space) |
| `>>` | n | Indent current line |
| `<<` | n | Unindent current line |
| `==` | n | Auto-indent current line |
| `r{char}` | n | Replace character under cursor |
| `R` | n | Enter replace mode |
| `~` | n | Toggle case of character under cursor |
| `gU{motion}` | n | Uppercase text |
| `gu{motion}` | n | Lowercase text |
| `gUU` | n | Uppercase entire line |
| `guu` | n | Lowercase entire line |
| `x` | n | Delete character under cursor (copies to register) |
| `X` | n | Delete character before cursor |
| `diw` | n | Delete inner word |
| `yiw` | n | Yank inner word |
| `ciw` | n | Change inner word |
| `daw` | n | Delete a word (with space) |
| `dip` | n | Delete inner paragraph |
| `yap` | n | Yank a paragraph |
| `.` | n | Repeat last change |
| `u` | n | Undo last change |
| `<C-r>` | n | Redo |

### Visual Mode

| Shortcut | Mode | Description |
|----------|------|-------------|
| `v` | n | Enter visual mode (character) |
| `V` | n | Enter visual line mode |
| `<C-v>` | n | Enter visual block mode |
| `o` | v | Move cursor to opposite end of selection |
| `aw` | v | Select a word |
| `iw` | v | Select inner word |
| `ab` | v | Select a block (brackets) |
| `ib` | v | Select inner block |
| `aB` | v | Select a block (curly braces) |
| `iB` | v | Select inner block |
| `ap` | v | Select a paragraph |
| `ip` | v | Select inner paragraph |
| ` Esc ` | v | Exit visual mode |
| `y` | v | Yank (copy) selection |
| `d` | v | Delete (cut) selection |
| `>` | v | Indent selection (default) |
| `<` | v | Unindent selection (default) |
| `~` | v | Toggle case of selection |
| `U` | v | Uppercase selection |
| `u` | v | Lowercase selection |
| `gv` | n | Reselect last visual selection |
| `<C-g>` | n | Toggle between visual modes |

### Searching & Substituting                                                                
| Shortcut | Mode | Description |
|----------|------|-------------|
| `/pattern` | n | Search forward for pattern |
| `?pattern` | n | Search backward for pattern |
| `n` | n | Repeat search in same direction (default) |
| `N` | n | Repeat search in opposite direction (default) |
| `*` | n | Search forward for word under cursor |
| `#` | n | Search backward for word under cursor |
| `g*` | n | Search forward for partial match |
| `g#` | n | Search backward for partial match |
| `:noh` | c | Clear search highlights |
| `:%s/old/new/g` | c | Substitute all occurrences in file |
| `:%s/old/new/gc` | c | Substitute with confirmation |

### Buffers & Windows

| Shortcut | Mode | Description |
|----------|------|-------------|
| `:e file` | c | Edit file |
| `:bn` | c | Next buffer |
| `:bp` | c | Previous buffer |
| `:bd` | c | Delete buffer |
| `:b#` | c | Go to alternate buffer |
| `:ls` | c | List buffers |
| `<C-w>v` | n | Split window vertically |
| `<C-w>s` | n | Split window horizontally |
| `<C-w>c` | n | Close current window |
| `<C-w>o` | n | Close all other windows |
| `<C-w>w` | n | Cycle through windows |
| `<C-w>r` | n | Rotate windows |
| `<C-w>=` | n | Equalize window sizes |
| `<C-w>_` | n | Maximize window height |
| `<C-w>|` | n | Maximize window width |
| `gt` | n | Go to next tab |
| `gT` | n | Go to previous tab |
| `1gt` | n | Go to tab 1 |
| `2gt` | n | Go to tab 2 |

### Exiting Neovim

| Shortcut | Mode | Description |
|----------|------|-------------|
| `:q` | c | Quit current window |
| `:q!` | c | Force quit (discard changes) |
| `:wq` | c | Save and quit |
| `:x` | c | Save and quit (if modified) |
| `ZZ` | n | Save and quit (saves if modified) |
| `ZQ` | n | Quit without saving |
| `:w` | c | Save file |
| `:w!` | c | Force save |
| `:wa` | c | Save all files |
| `:qa` | c | Quit all windows |
| `:qa!` | c | Force quit all |
| `:wqa` | c | Save all and quit all |

### Macros & Registers

| Shortcut | Mode | Description |
|----------|------|-------------|
| `q{register}` | n | Start recording macro |
| `q` | n | Stop recording macro |
| `@{register}` | n | Play macro |
| `@@` | n | Replay last macro |
| `"{register}` | n | Paste from register |
| `:reg` | c | Show registers |
| `:reg {register}` | c | Show specific register |

### Miscellaneous

| Shortcut | Mode | Description |
|----------|------|-------------|
| `gv` | n | Reselect last visual selection |
| `g;` | n | Go to older position in change list |
| `g,` | n | Go to newer position in change list |
| `<C-o>` | n | Jump back to previous cursor position |
| `<C-i>` | n | Jump forward to next cursor position |
| `zt` | n | Scroll line with cursor to top |
| `zz` | n | Scroll line with cursor to center |
| `zb` | n | Scroll line with cursor to bottom |
| `ga` | n | Show ASCII/Unicode value under cursor |
| `g8` | n | Show UTF-8 byte sequence under cursor |
| `gf` | n | Open file under cursor |
| `gx` | n | Open URL under cursor |
| `K` | n | Look up keyword |
| `&` | n | Repeat last substitute |
| `@:` | n | Repeat last command-line |
| `<C-]>` | n | Jump to tag under cursor |
| `<C-t>` | n | Pop tag stack |
| `:help {topic}` | c | Open help |

### Folding

| Shortcut | Mode | Description |
|----------|------|-------------|
| `zo` | n | Open fold under cursor |
| `zc` | n | Close fold under cursor |
| `za` | n | Toggle fold under cursor |
| `zR` | n | Open all folds |
| `zM` | n | Close all folds |
| `zf` | n, v | Create fold |
| `zd` | n | Delete fold under cursor |
| `zE` | n | Eliminate all folds |
| `:fold` | c | Create fold (command) |
| `:foldclose` | c | Close fold |
| `:foldopen` | c | Open fold |

### Marks

| Shortcut | Mode | Description |
|----------|------|-------------|
| `m{letter}` | n | Set mark at cursor position |
| `'{letter}` | n | Jump to line of mark |
| `` `{letter} `` | n | Jump to exact position of mark |
| `''` | n | Jump back to previous position |
| `` `` `` | n | Jump back to exact previous position |
| `:marks` | c | List all marks |
| `:delm {mark}` | c | Delete mark |

### Quickfix & Location List

| Shortcut | Mode | Description |
|----------|------|-------------|
| `:cn` | c | Next quickfix entry |
| `:cp` | c | Previous quickfix entry |
| `:copen` | c | Open quickfix window |
| `:cclose` | c | Close quickfix window |
| `:cfirst` | c | Go to first quickfix entry |
| `:clast` | c | Go to last quickfix entry |
| `:ln` | c | Next location list entry |
| `:lp` | c | Previous location list entry |
| `:lopen` | c | Open location list window |
| `:lclose` | c | Close location list window |

### Spelling

| Shortcut | Mode | Description |
|----------|------|-------------|
| `]s` | n | Move to next spelling error |
| `[s` | n | Move to previous spelling error |
| `z=` | n | Show spelling suggestions |
| `zg` | n | Add word to spell dictionary |
| `zw` | n | Mark word as wrong |
| `zug` | n | Undo adding word to dictionary |
| `:set spell` | c | Enable spell checking |
| `:set nospell` | c | Disable spell checking |

### Vimdiff (Diff Mode)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `do` | n | Diff obtain (pull changes from other buffer) |
| `dp` | n | Diff put (push changes to other buffer) |
| `]c` | n | Jump to next diff change |
| `[c` | n | Jump to previous diff change |
| `:diffthis` | c | Make current window part of diff |
| `:diffoff` | c | Turn off diff mode |
| `:diffupdate` | c | Re-scan differences |

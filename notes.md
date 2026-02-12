# LazyVim / Neovim Keymaps (React + TypeScript)

## Core Navigation

- `w` / `b` / `e`: Move by word; `W` / `B` / `E` move by WORD (skip punctuation).
- `0`: Start of line; `^`: first non-blank char; `$`: end of line.
- `f{char}` / `F{char}`: Jump to char on current line (`f"` → next quote, `F"` → previous); `;` repeats, `,` reverses.
- `t{char}` / `T{char}`: Jump till before char.
- `%`: Jump to matching bracket (`()`, `{}`, `[]`).
- `gg`: Top of file; `G`: bottom; `{n}G`: go to line `n`.
- `Ctrl+d` / `Ctrl+u`: Half‑page down/up.
- `s`: Flash jump (type a few chars, then jump to label).

---

## Text Objects & Structural Editing

Use with `d`, `c`, `y`, `v` for semantic edits.

- `iw` / `aw`: Inner/around word (`aw` often deletes word + space).
- `i"` / `a"`: Inside/around double quotes (also `i'`, `i`` `).
- `i{` / `a{`: Inside/around braces (also `i[`, `i(`, `i<`).
- `it` / `at`: Inside/around HTML/JSX tag.
- `if` / `af`: Inside/around function (Treesitter).

Common patterns:

- `ci"`: Change inside quotes (keep quotes, replace content).
- `ca{`: Change around braces (replace block + braces).
- `yiw` / `diw`: Yank/delete word under cursor.
- `.`: Repeat last change.
- `u` / `Ctrl+r`: Undo / redo.
- `>>` / `<<` / `==`: Indent, dedent, auto‑indent line/selection.

---

## LSP & Diagnostics (TypeScript / React)

- `gd`: Go to definition.
- `gr`: Go to references (find usages).
- `K`: Hover documentation (types/props/docs).
- `<leader>ca`: Code actions (quick fixes, refactors, add missing imports, etc.).
- `<leader>cr`: Rename symbol.
- `<leader>co`: Organize imports (sort, remove unused).
- `]d` / `[d`: Next/previous diagnostic.
- `<leader>cd`: Line diagnostics for current line.

### Trouble (Diagnostics Views)

- `<leader>xx`: Toggle Trouble panel (project diagnostics).
- `<leader>xX`: Buffer diagnostics.
- `<leader>xL`: Location list.
- `<leader>xQ`: Quickfix list.

---

## Searching & Fuzzy Finding

Project / file search:

- `<leader><space>`: Primary file finder (fastest).
- `<leader>ff`: Alternate file finder.
- `<leader>sg`: Live grep (search in files).
- `<leader>sw`: Search word under cursor.
- `<leader>ss`: Search by symbols.
- `<leader>sk`: Search keymaps.
- `<leader>s`: Open search menu (more search options).
- `<leader>sr`: Resume last search.
- `<leader>/`: Fuzzy search in current buffer.
- `<leader>sR`: Project search/replace (grug‑far).

---

## File Explorer (Neo-tree)

- `<leader>e`: Toggle explorer.
- `a`: Create file/folder (end with `/` for folder).
- `r` / `d` / `c` / `m`: Rename / delete / copy / move.
- `h` / `l`: Collapse parent / expand/open.
- `P`: Preview file.

---

## Buffers & Windows

### Buffers

- `[b` / `]b`: Previous/next buffer.
- `<leader>bd`: Close buffer.
- `<leader>bb`: Switch to alternate buffer.

### Windows / Splits

- `Ctrl+h` / `Ctrl+j` / `Ctrl+k` / `Ctrl+l`: Move between windows.
- `<leader>-`: Horizontal split.
- `<leader>|`: Vertical split.

---

## Git Workflow

- `<leader>gg`: Open LazyGit.
- `]h` / `[h`: Next/previous hunk.
- `<leader>ghs`: Stage hunk.
- `<leader>ghr`: Reset hunk.
- `<leader>ghp`: Preview hunk.
- `<leader>ghb`: Blame line.

---

## Formatting & Tooling

- `<leader>cf`: Format file/selection (Conform).
- Auto‑format on save is enabled.

Plugin/tooling commands:

- `:Lazy`: Manage plugins.
- `:Mason`: Manage LSP servers, linters, formatters.

---

## Productivity Tips, Macros, Marks

- Press `<leader>` and wait to see which‑key menu.
- `<leader>a`: Claude Code.
- `:help quickref.txt`: Handy Vim motion cheat sheet.
- `qa` / `q`: Start/stop recording macro to register `a`; `@a` plays it.
- `m{a-z}`: Set mark; `'{a-z}`: Jump to mark.
- `<leader>st`: Search TODOs (and similar tags).

---

## Quick React / TypeScript Editing Loop

- Jump to component: `gd` on component usage, then `if` / `af` to operate on the whole function/component.
- Tweak props: Use `f(` or `f{` to reach props, then `diw` / `daw` / `ciw` with `iw` / `aw` to edit arguments.
- Fix types/imports: `K` to inspect type, `<leader>ca` for quick fixes, `<leader>co` to clean imports.
- Refactor usage patterns: `<leader>sg` to find usages, `<leader>sR` to rewrite patterns across files.

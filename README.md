# nvim
## What is this?
My personal NeoVim configuration.

## How to use
1. If you have an existing `~/.config/nvim` directory, then you may want to back that up first.
2. Clone this repository to directory `~/.config/nvim`.

## Options
`<leader>` key defined in `./lua/options.lua` as `<space>`.

Tabs etc are also defined in this file.

## Vim key mappings
Defined in `lua/keymaps.lua`

File explorer:
- `<leader>ex` - opens file explorer in the current window
- `<leader>hx` - opens file explorer in horizontally split windows
- `<leader>vx` - opens file explorer in vertically split windows

Search in file:
- Usual vim `/` to search, `n` to skip forward, `N` to skip backward.
- `<leader>c` to clear highlighted search (`n` and `N` will reactivate previous search highlights)

Window splitting:
- `<alt>v` - vertical split
- `<alt>h` - horizontal split
- Move between windows with `<ctrl>-w` then the usual `hjkl` keys

## Plugins
Set in file `lua/plugins` and configured in `after/plugins/<file>.lua`

## luasnip
All snippets under the `luasnip/` directory:
```
luasnip/
├── all.lua
└── tex
    ├── general.lua
    ├── graphics.lua
    └── math.lua
```

`all.lua` contains snippets for all languages, while per-language snippets are in their
own subdirectory named after the language, such as `luasnip/tex`.

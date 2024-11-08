# nvim
## What is this?
My personal NeoVim configuration.

## Install Neovim from GitHub repository
I've had problems with distribution package manager installed binaries, so prefer to install
Neovim from the pre-compiled binary on the Neovim Github repository.
The following instructions for Linux are taken from https://github.com/neovim/neovim/releases:

If present, uninsatll the package manager installed `nvim`. Clear out `/opt/nvim`:
```
sudo rm -rf /opt/nvim
```
Install neovim from GitHub repository:
```
sudo cd /opt
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -zvxf nvim-linux64.tar.gz
sudo rm nvim-linux64.tar.gz
```
Add this to your shell config (`~/.bashrc`, `~/. zshrc`, ...):
```
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Install neovim configuration
1. If you have an existing `~/.config/nvim` directory, then you may want to back that up first.
2. Clone this repository to directory `~/.config/nvim`.

## Install packages
Install some packages and run additional commands for things like `node`, `ruby`, and `perl`:
```
sudo dnf install gcc make clang
sudo dnf install ripgrep
sudo dnf install fd-find

sudo dnf install luarocks
sudo luarocks install jsregexp

sudo dnf install nodejs
sudo npm install -g neovim

sudo dnf install python3-neovim

sudo dnf install ruby ruby-devel
sudo gem install neovim

sudo install perl-App-cpanminus
sudo cpanm -n Neovim::Ext
```

## Install `FiraCode` Nerd font
See https://docs.fedoraproject.org/en-US/quick-docs/fonts/ for more information.

If the font is available as a package in the default OS repositories, then use that. For Fedora we install the `fira-code-fonts` package:
```
sudo dnf install fira-code-fonts
```

If there isn't a package, then install manually as follows.

Create a font directory, download the font into it:
```
sudo mkdir -p /usr/local/share/fonts/FiraCode
sudo cd /usr/local/share/fonts/FiraCode
sudo curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip --output FiraCode.zip
sudo unzip FiraCode.zip
```

Set permissions and SELinux context:
```
sudo chown -R root: /usr/local/share/fonts/FiraCode
sudo chmod 644 /usr/local/share/fonts/FiraCode/*
sudo restorecon -vFr /usr/local/share/fonts/FiraCode
```

Update the font cache:
```
sudo fc-cache -v
```


# Usage
## Options
`<leader>` key defined in `./lua/options.lua` as `<space>`.

Tabs etc are also defined in this file.

## Telescope fuzzy search
https://github.com/nvim-telescope/telescope.nvim
- `<leader>ff` - find files
- `<leader>fg` - find grep (strings within files)
- `<leader>fb` - find buffer
- `<leader>fh` - find help

## Vim key mappings
Defined in `lua/keymaps.lua`

File explorer:
- `<leader>ex` - opens file explorer in the current window
- `<leader>hx` - opens file explorer in horizontally split windows
- `<leader>vx` - opens file explorer in vertically split windows

Auto-complete:
- Type first few characters, `<ctrl>-n` to search, then `TAB` to select from options.

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

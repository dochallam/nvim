require('lualine').setup {
  options = {
    --icons_enabled = true,
    icons_enabled = false,
    --theme = 'auto',
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    --lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_b = {
        {'branch', color = {fg = '#000000'}},
        {'diff',
            diff_color = {
                added = {fg = '#000000'},
                modified = {fg = '#000000'},
                removed = { fg = '#000000'}
            }
        },
        {'diagnostics', color = {fg = '#000000'}}
    },
    lualine_c = {'filename'},
    --lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {
        {'progress', color = {fg = '#000000'}}
    },
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

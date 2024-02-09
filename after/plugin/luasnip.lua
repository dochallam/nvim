-- Setting these keymaps is easiest to do in Vimscript because they use Vimscript’s
-- conditional ternary operator. As this is a Lua file we wrap the Vimscript in
-- vim.cmd[[...]].
-- Ref: https://www.ejmastnak.com/tutorials/vim-latex/luasnip/
vim.cmd[[
" Expand snippets in insert mode with Tab
imap <silent><expr> <Tab> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<Tab>'

" Jump forward in through tabstops in insert and visual mode with Control-f
imap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>'
smap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>'

" Jump backward through snippet tabstops with Shift-Tab (for example)
"imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
"smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
imap <silent><expr> <C-b> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-b>'
smap <silent><expr> <C-b> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-b>'
]]

-- Load all snippets from the nvim/luasnip directory at startup
-- require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})

-- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/luasnip/"})

-- LuaSnip configuration options
require("luasnip").config.set_config({ 

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})


lua require('plugins')
lua require('ts')
lua require('statusline')
lua require('keymaps')
lua require("mason").setup()
lua require('lsp')
colorscheme everforest
set termguicolors
highlight Normal guibg=none
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set guicursor=n-v-c-i:block
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8

" line number settings
set relativenumber
set number

" search settings
set nohlsearch
set nohidden

" general editor settings
set noerrorbells
set nowrap
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8


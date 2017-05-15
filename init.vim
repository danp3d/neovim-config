set nocompatible
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim

call dein#begin(expand('~/.vim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })

call dein#add('Shougo/unite.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('carlitux/deoplete-ternjs')
call dein#add('scrooloose/nerdTree')
call dein#add('mxw/vim-jsx')
call dein#add('MattesGroeger/vim-bookmarks')
call dein#add('Raimondi/delimitMate')
call dein#add('elzr/vim-json')
call dein#add('pangloss/vim-javascript')
call dein#add('moll/vim-node')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('cakebaker/scss-syntax.vim')
call dein#add('tpope/vim-sleuth')
call dein#add('gioele/vim-autoswap')
call dein#add('fatih/vim-go')
call dein#add('freeo/vim-kalisi')
call dein#add('neomake/neomake')
call dein#add('gko/vim-coloresque')
call dein#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" JSX/JavaScript
let g:jsx_ext_required=0
set conceallevel=1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake

""" Styling
colorscheme kalisi
set background=dark
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Search term=bold cterm=NONE ctermfg=Black ctermbg=LightGray gui=NONE guifg=Black guibg=LightGray
highlight Conceal guibg=NONE

""" 4 spaces as tabs (default)
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

""" Shortcuts
map <C-t> :tabnew<CR>
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

""" Enable Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "<tab>"
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

set iskeyword-=.

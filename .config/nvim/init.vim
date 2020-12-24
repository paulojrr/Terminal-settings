call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'andymass/vim-matchup'
Plug 'eliba2/vim-node-inspect'
Plug 'puremourning/vimspector'
Plug 'mattn/emmet-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'takac/vim-hardtime'
Plug 'Yohannfra/Nvim-Switch-Buffer'
call plug#end()

" Shortcuts for open and switch tabs
nnoremap T :tabnew <cr>
nnoremap S :SwitchBuffer <cr>
set switchbuf=usetab
nnoremap <bar> :call OpenBuffer('v') <cr>

" let g:hardtime_default_on = 1
" Node debugger shortcuts
nnoremap <silent><F4> :NodeInspectStart<cr>
nnoremap <silent><F5> :NodeInspectRun<cr>
nnoremap <silent><F6> :NodeInspectConnect("127.0.0.1:9239")<cr>
nnoremap <silent><F7> :NodeInspectStepInto<cr>
nnoremap <silent><F8> :NodeInspectStepOver<cr>
nnoremap <silent><F9> :NodeInspectToggleBreakpoint<cr>
nnoremap <silent><F10> :NodeInspectStop<cr>

"Shortcut for emmet
let g:user_emmet_leader_key='<C-Z>'

" Enable copy in nvim to system
set clipboard=unnamedplus

" Vim Theme
"autocmd vimenter * ++nested colorscheme gruvbox
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Enable NerdCommenter
filetype plugin on


" Vim tab space
set shiftwidth=2
" Show line numbers
set number
" Show relative line numbers
set relativenumber
" Active mouse in Vim
set mouse=a
" Preview effects of commands like replace
set inccommand=split

" Leader key
let mapleader="\<space>"
" Open init.vim
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" Refresh init.vim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
" Shortcut for save file
nnoremap <c-s> :w! <cr>
" Shortcut for exit file
nnoremap <c-q> :q! <cr>
" Shortcut for browse file
nnoremap <c-p> :Files<cr>
" Shortcut for open NerdTree
map <C-n> :NERDTreeToggle<CR>
" map <C-f> :CocCommand prettier.open-output<CR>
" Command for set Prettier as default formater
command! -nargs=0 Prettier :CocCommand prettier.formatFile


set guifont=Fira\ Code

" Shortcut for show autocomplete suggestions
inoremap <silent><expr> <c-space> coc#refresh()

set spell spelllang=pt

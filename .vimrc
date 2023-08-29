syntax on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set expandtab
set autoindent
set mouse=a
set clipboard=unnamedplus

" if exists('$TMUX')
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"  
" endif

let g:rainbow_active = 1

call plug#begin()
Plug 'jparise/vim-graphql'
Plug 'tasn/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'javascriptreact', 'typescriptreact', 'cpp'] }
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romgrk/doom-one.vim'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tribela/vim-transparent'
Plug 'morhetz/gruvbox'
Plug 'vv9k/vim-github-dark'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()
  
set termguicolors
colorscheme tokyonight 
set bg=dark

" highlight Normal guibg=NONE ctermbg=NONE
" highlight clear LineNr 

filetype off
filetype plugin indent on

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'

inoremap jj <Esc>
nmap ;; <CMD>CocCommand explorer<CR>


inoremap <silent><expr> <c-space> coc#refresh()
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

nnoremap <M-S-c> "+y  " Normal (must follow with an operator)
xnoremap <M-S-c> "+y  " Visual
nnoremap <M-S-v> "+p  " Normal
noremap! <M-S-v> <C-r>+  " Insert and Command line
inoremap <M-S-v> <C-r>+  " Insert


let g:rainbow_active = 1

hi Visual  guifg=#000000 guibg=#FFFFFF gui=none

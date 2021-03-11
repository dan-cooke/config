set shell=/usr/local/bin/fish
set autochdir

let mapleader = "\<Space>"

set mouse=a
set colorcolumn=100

"" ========================== PLUGINS ======================================= 

call plug#begin('~/.local/share/nvim/plugged')
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'dense-analysis/ale'
	Plug 'pangloss/vim-javascript'
	Plug 'rust-lang/rust.vim'

call plug#end()

"" ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
nnoremap <leader>f :ALEFix<CR>

"" JS
let g:javascript_conceal_arrow_function  = "⇒"

"" ========================== LANGUAGE SERVERS =============================
"" Language servers
""let g:LanguageClient_serverCommands = {
 "   \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],}

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"" ============================= ncm2 ======================================== 
"" Completion for all buffers
"autocmd BufEnter  *  call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect


"" ============================= GENERAL REMAPS ============================
noremap £ :norm i#<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P<Paste>


" " Uppercase word
inoremap <c-u> <esc>gUawA


" " Fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-Space> :b#<CR>

" Quick Save
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>

" " Quick Exit
nnoremap <leader>q :q!<CR>
nnoremap <leader>z ZZ

" " Change words
:nnoremap ,n :exe 'cw' . input('Name: ')<CR>


" VIM prefs"
set noswapfile
set showcmd
set numberwidth=1
set number relativenumber
set hidden


"" python
let g:python3_host_prog="/usr/local/bin/python3"

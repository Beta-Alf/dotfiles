execute pathogen#infect()

set expandtab
set nowrap
set tabstop=4
set shiftwidth=4
syntax enable
filetype plugin indent on

set t_Co=256
set background=dark
colorscheme solarized

nmap <silent> <C-K> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>
nmap <silent> <space> i <ESC>l
nmap <F8> :TagbarToggle<CR>

"Disable Ex mode
nnoremap Q <nop>

"Turn of search highlighting easily
nnoremap <silent> <Leader>/ :nohlsearch<CR>

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_extra_conf_globlist = ['~/hdd/Muddlespace/*','!~/*']

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
au BufNewFile,BufRead *.xtm setf scheme

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['buffertag', 'mixed']

"Gundo
nnoremap <F5> :GundoToggle<CR>

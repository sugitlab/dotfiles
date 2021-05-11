" Show line number
set number

" no swap 
set noswapfile

" Auto indent enabled (new line)
set autoindent

" Set the number of auto indent spaces
set shiftwidth=2

" Set Tab key to spaces instead
set expandtab

" Set Tab to N spaces
set tabstop=2

" Cursor steps
set softtabstop=2

" Auto indent enabled (literal)
set smartindent

" Set yank(ed) text into clipboard
set clipboard=unnamed

" Highlight searching word
set hls

" Encode
set encoding=utf-8

" Title
set title

" Enable filetype plugin and indent plugin
syntax enable
filetype plugin indent on

" ------
" Python path
" ------
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'

" ------
"  DEIN
" ------
let s:dein_dir = expand('~/.config/nvim/dein')
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  
  let g:rc_dir = expand('~/.config/nvim')
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,     {'lazy': 0})
  call dein#load_toml(s:lazy_toml,{'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

" ---
" markdown preview
" ---
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_port = 8080
function! g:EchoUrl(url)
  :echo a:url
endfunction
let g:mkdp_browserfunc = 'g:EchoUrl'

" ---
" color
" ---
if has('termguicolors')
  set termguicolors
endif
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

let g:lightline = {'colorscheme' : 'sonokai'}

" ----
"  flutter
" ----
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>


:set number
:set autoindent
:syntax enable
:set nocompatible
:set nowrap
:set backspace=2
map <F2> :NERDTreeToggle<CR>
map <F3> :call ToggleIndentation()<CR>
:let g:indent_guide_guide_size=1
:set laststatus=2

set guifont=Inconsolata\ for\ Powerline:h18

"Bundle"
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'itchyny/lightline.vim'
Bundle 'Syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'

" Colorschemes
Bundle 'nanotech/jellybeans.vim' 
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'tomasr/molokai' 


filetype plugin indent on

colorscheme jellybeans
let g:lightline = {
 \ 'colorscheme': 'jellybeans',
 \ 'active': {
 \ 	'left': [ [ 'mode', 'paste'],
 \			[ 'fugitive', 'readonly', 'filename', 'modified' ] ]
 \ },
 \ 'component_function': {
 \		'fugitive': 'MyFugitive'
 \ },
 \ 'component': {
 \		'readonly': '%{&filetype=="help"?"":&readonly?"ReadOnly":""}',
 \		'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
 \ },
 \ 'component_visible_condition': {
 \		'readonly': '(&filetype!="help"&& &readonly)',
 \		'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
 \ },
 \ 'separator': { 'left': '', 'right': '' },
 \ 'subseparator': { 'left': '', 'right': '' }
 \ }

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction



function SetSpaceIndentation()
	let g:cindentation = "spaces"
	set sw=2
	set ts=2
	set expandtab
	set smarttab
endfunction

function SetTabIndentation()
	let g:cindentation = "tabs"
	set sw=3
	set ts=3
	set noexpandtab
	set nosmarttab
endfunction

function ToggleIndentation()
	if g:cindentation == "tabs"
		call SetSpaceIndentation()
		echo "Space Indentation"
	else
		call SetTabIndentation()
		echo "Tab Indentation"
	endif
endfunction

call SetTabIndentation()

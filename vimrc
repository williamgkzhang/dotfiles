:set number
:colorscheme railscasts
:set autoindent
:syntax enable
:filetype on
:set nocompatible
:set nowrap
:set backspace=2
map <F2> :NERDTreeToggle<CR>
map <F3> :call ToggleIndentation()<CR>
:let g:indent_guide_guide_size=1
:set laststatus=2

set guifont=Inconsolata\ for\ Powerline:h18

execute pathogen#infect()
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

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

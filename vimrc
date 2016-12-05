runtime! debian.vim
syntax on
set tabstop=4
set nohlsearch
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set ruler
"set ls=2
set background=light

" 80 column limit highlight
"highlight ExtraWhitespace ctermbg=green guibg=blue ctermfg=white
"match ExtraWhitespace /\s\+$\| \+\ze\t\|\%81v.*/

hi Bang ctermbg=red guibg=#FF0000
match Bang /\%>114v.*\%<116v\|^\t*\zs \+\|\s\+$/

"hi extraWhiteSpace ctermbg=green guibg=green ctermfg=green
"match extraWhiteSpace /^\t*\zs \+/

"hi trailingWhiteSpace ctermbg=blue guibg=blue ctermfg=blue
"match trailingWhiteSpace /\s\+$/

"hi whiteSpaceOnly ctermbg=yellow guibg=yellow ctermfg=yellow
"match whiteSpaceOnly /\s\+$/

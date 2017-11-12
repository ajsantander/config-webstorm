"         _                   _           
"   __ _ (_)___   _ ____   _(_)_ __ ___  
"  / _` || / __| | '_ \ \ / / | '_ ` _ \ 
" | (_| || \__ \ | | | \ V /| | | | | | |
"  \__,_|/ |___/ |_| |_|\_/ |_|_| |_| |_|
"      |__/
" 

" -------------------------------------------------------------
"  Settigs
" -------------------------------------------------------------

set number
set mouse=a

" -------------------------------------------------------------
"  Plugins 
" -------------------------------------------------------------

if(!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.config/nvim'))

  " Plugins
  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
  "call dein#add('othree/html5.vim')
  "call dein#add('othree/yajs.vim')
  "call dein#add('othree/jsdoc-syntax.vim')
  "call dein#add('heavenshell/vim-jsdoc')
  "call dein#add('elzr/vim-json')
  "call dein#add('HerringtonDarkholme/yats.vim')
  "call dein#add('skwp/vim-html-escape')
  "call dein#add('hail2u/vim-css3-syntax')
  "call dein#add('ap/vim-css-color')
  "call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  "call dein#add('dhruvasagar/vim-table-mode')
  "call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
  "call dein#add('rhysd/vim-grammarous')
  "call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
  "call dein#add('tmux-plugins/vim-tmux')
  "call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})
  "call dein#add('tpope/vim-fugitive')
  "call dein#add('tpope/vim-rhubarb')
  "call dein#add('chemzqm/vim-easygit')
  "call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
  "call dein#add('sgeb/vim-diff-fold')
  "call dein#add('airblade/vim-gitgutter')
  "call dein#add('junegunn/gv.vim')
  "call dein#add('lambdalisue/gina.vim')
  call dein#add('scrooloose/nerdtree') " file explorer
  "call dein#add('Xuyuanp/nerdtree-git-plugin')
  "call dein#add('tpope/vim-repeat')
  "call dein#add('tpope/vim-unimpaired')
  "call dein#add('neomake/neomake', {'on_cmd': 'Neomake'})
  "call dein#add('editorconfig/editorconfig-vim')
  "call dein#add('AndrewRadev/switch.vim')
  "call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('vim-airline/vim-airline') " status bar
  call dein#add('vim-airline/vim-airline-themes') " status bar themes
  "call dein#add('tpope/vim-surround')
  "call dein#add('tomtom/tcomment_vim')
  "call dein#add('mattn/emmet-vim')
  "call dein#add('sbdchd/neoformat')
  "call dein#add('Shougo/deoplete.nvim')
  "call dein#add('Shougo/deol.nvim')
  "call dein#add('Shougo/denite.nvim')
  "call dein#add('Shougo/neomru.vim')
  "call dein#add('Shougo/context_filetype.vim')
  "call dein#add('chemzqm/denite-git')
  "call dein#add('artur-shaik/vim-javacomplete2')
  "call dein#add('Shougo/neco-vim')
  "call dein#add('Shougo/neoinclude.vim')
  "call dein#add('ujihisa/neco-look')
  "call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'})
  "call dein#add('zchee/deoplete-jedi')
  "call dein#add('zchee/deoplete-go')
  "call dein#add('junegunn/limelight.vim')
  "call dein#add('Konfekt/FastFold')
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('Shougo/echodoc.vim')
  "call dein#add('honza/vim-snippets')
  "call dein#add('mhinz/vim-sayonara')
  "call dein#add('mattn/webapi-vim')
  "call dein#add('mattn/gist-vim')
  "call dein#add('pocari/vim-denite-gists')
  "call dein#add('vim-scripts/SyntaxRange')
  "call dein#add('terryma/vim-multiple-cursors')
  "call dein#add('MartinLafreniere/vim-PairTools')
  "call dein#add('Shougo/vimfiler.vim')
  "call dein#add('Shougo/unite.vim')
  "call dein#add('junegunn/gv.vim')
  "call dein#local('~/GitHub', {},['vim-folds'])
  "call dein#local('~/GitHub', {},['oceanic-next'])
  "call dein#local('~/GitHub', {},['nvim-typescript'])
  "call dein#add('chemzqm/denite-git')
  "call dein#add('sjl/vitality.vim')
  "call dein#add('ryanoasis/vim-devicons')
  "call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

  " Verify plugin installation
  call map(dein#check_clean(), "delete(v:val, 'rf')")
  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

call dein#end()
filetype plugin indent on

" ---------------------------------------------------------------------
"  NERDTree
" ---------------------------------------------------------------------

map <silent><c-\> :NERDTreeToggle<CR>

" ---------------------------------------------------------------------
"  AIRLINE
" ---------------------------------------------------------------------

let g:airline_theme='onedark'

" init.vim

" Plugins -----------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged/')

    " Colorschemes
    Plug 'junegunn/seoul256.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'ajmwagar/vim-deus'
    Plug 'embark-theme/vim', { 'as': 'embark' }
    Plug 'morhetz/gruvbox'
    " Limelight
    Plug 'junegunn/limelight.vim'
    " Sensible defaults
    Plug 'tpope/vim-sensible'
    " Status line
    Plug 'itchyny/lightline.vim'
    " Smooth scrolling
    Plug 'yonchu/accelerated-smooth-scroll'
    " Pulse the line after a search
    Plug 'danilamihailov/beacon.nvim'
    " Highlight word under the cursor
    Plug 'RRethy/vim-illuminate'
    " Distraction free writing
    Plug 'junegunn/goyo.vim'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Display diff symbols
    Plug 'mhinz/vim-signify'
	" FileTree navigator
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggleVCS' }
    " Add developer icons
    Plug 'ryanoasis/vim-devicons'
    " Automatically set cwd
    Plug 'airblade/vim-rooter'
    " View LSP Symbols
    Plug 'liuchengxu/vista.vim'
    " Navigate files easily
    Plug 'lokaltog/vim-easymotion'
    " Change surrounding characters
    Plug 'tpope/vim-surround'
    " Commenting plugin
    Plug 'tpope/vim-commentary'
    " Session management
    Plug 'tpope/vim-obsession'
    " Netrw enhancement
    Plug 'tpope/vim-vinegar'
    " Undo tree
    Plug 'sjl/gundo.vim'
    " Print documents in the echo area
    Plug 'Shougo/echodoc.vim'
    " Add common snippets
    Plug 'honza/vim-snippets'
    " Allow repetition of plugin mappings
    Plug 'tpope/vim-repeat'

    " Code Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Requires nodejs and yarn
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown'  }
    " Support for various languages
    Plug 'sheerun/vim-polyglot'
    " Semantic Highlighting for C/C++
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Full rust language support, adds cargo commands
    Plug 'rust-lang/rust.vim'
    " CMake support
    Plug 'cdelledonne/vim-cmake'
    " Git support
    Plug 'tpope/vim-fugitive'
    " Github support
    Plug 'tpope/vim-rhubarb'
    " Nerdtree plugin to show git status
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Handy bracket mappings
    Plug 'tpope/vim-unimpaired'

call plug#end()

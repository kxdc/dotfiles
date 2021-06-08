" init.vim

" Keybindings ------------------------------------------

let mapleader = "\<space>"

nnoremap <leader>fed :e $MYVIMRC<cr>
nnoremap <leader>feD :vsplit $MYVIMRC<cr>
nnoremap <leader>fer :source $MYVIMRC<cr>
nnoremap <leader>fs :w<cr>
nnoremap <leader>fS :wa<cr>

nnoremap <leader>tr :set relativenumber!<cr>
nnoremap <leader>tn :set number!<cr>
nnoremap <leader>tw :set wrap!<cr>

noremap <leader>wh <C-w>h
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wl <C-w>l

inoremap jk <ESC>
vnoremap jk <ESC>
nnoremap j gj
nnoremap k gk

noremap H ^
noremap L $
cnoremap %s/ %sm/
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap ? ?\v
nnoremap / /\v
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>

inoremap <c-a> <esc>I
inoremap <c-e> <esc>A"`

nnoremap "" "0"
nnoremap <leader>bY gg"*yGgg"+yG
nnoremap vv ^vg_

" Quickfix for the last search
nnoremap <silent> <leader>en :lopen<cr> :lnext<cr>
nnoremap <silent> <leader>ep :lopen<cr> :lprevious<cr>
nnoremap <silent> <leader>ec :lclose<cr>
nnoremap <silent> <leader>ls :mksession!<cr>
nnoremap <silent> <leader>'  :split<cr> :terminal<cr> :resize 12<cr>i

" Tab and Shift-Tab for completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Nerd Tree switch
nnoremap <leader>pt :NERDTreeToggleVCS<cr>

" Undo Tree switch
nnoremap <leader>u :GundoToggle<cr>

" Fzf
nnoremap <leader>? :Maps<cr>
nnoremap <leader>ss :BLines<cr>
nnoremap <leader>sS :Lines<cr>
nnoremap <leader>Ts :Colors<cr>
nnoremap <leader>pf :GFiles<cr>
nnoremap <leader>pF :Files<cr>
nnoremap <leader>pp :RG<cr>
nnoremap <leader>tt :RG TODO<cr>
nnoremap <leader>tf :RG FIXME<cr>
nnoremap <leader>ff :Files ~/code<cr>
nnoremap <leader>fm :Marks<cr>
nnoremap <leader>pr :History<cr>
nnoremap <leader>hh :Helptags<cr>

" Options ----------------------------------------------

set background=dark
if exists('g:fvim_loaded')
    colorscheme onedark
endif

set noswapfile
set lazyredraw
set title
set nobackup
set nowritebackup
set mousehide

set ignorecase
set smartcase
set gdefault
set clipboard=unnamed

set number
set nowrap
set showmatch
set hidden
set termguicolors
set signcolumn=yes

set splitright
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cmdheight=2
set textwidth=80
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent


" Plugins ----------------------------------------------
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


" More Settings ------------------------------------------

if exists('g:fvim_loaded')
    nnoremap <leader>TF :FVimToggleFullScreen<cr>
endif

" Set grep program to ripgrep if available and set the format
if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

" C++ format on save
autocmd BufWritePost *.cpp :call CocAction('format') 

" Use fold markers when editing vim files
au BufNewFile,BufRead *.vim set foldmethod=marker

" Properly match comments in json files
autocmd FileType json syntax match Comment +\/\/.\+$+

" Toggle relativenumber in insert mode and regular line numbers in normal mode
autocmd InsertEnter * silent! :set norelativenumber
autocmd InsertLeave,BufNewFile,VimEnter * silent! :set relativenumber


" Coc.nvim Settings --------------------------------------

" Open Coc config 
nnoremap <leader>CC :CocConfig<cr>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Goto code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<cr>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics.
nnoremap <silent><nowait> <leader>ca  :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent><nowait> <leader>ce  :<C-u>CocList extensions<cr>

" Show commands.
nnoremap <silent><nowait> <leader>cc  :<C-u>CocList commands<cr>

" Find symbol of current document.
nnoremap <silent><nowait> <leader>co  :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent><nowait> <leader>cj  :<C-u>CocNext<cr>

" Do default action for previous item.
nnoremap <silent><nowait> <leader>ck  :<C-u>CocPrev<cr>

" Resume latest coc list.
nnoremap <silent><nowait> <leader>cp  :<C-u>CocListResume<cr>

" Open yank list
nnoremap <silent><nowait> <leader>cy  :<C-u>CocList -A --normal yank<cr>

" Open Vista using Coc symbols
nnoremap <silent><nowait> <leader>cv  :Vista coc<cr>


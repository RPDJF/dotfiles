" Enable line numbers
set number               " Show line numbers

" Enable syntax highlighting
syntax enable            " Enable syntax highlighting
set background=dark      " Set background color to dark

" Set color scheme
colorscheme desert       " Use the desert color scheme (you can change this)

" Enable line wrapping
set wrap                 " Wrap long lines
set linebreak            " Break lines at word boundaries

" Enable auto-indentation
set smartindent          " Smart indentation
set tabstop=4            " Set tab width to 4 spaces
set shiftwidth=4         " Set the number of spaces to use for indentation
set expandtab            " Use spaces instead of tabs
set autoindent           " Automatically indent new lines

" Enable search highlighting
set incsearch            " Incremental search
set ignorecase           " Case insensitive searching
set smartcase            " Case sensitive if search pattern contains uppercase letters
set hlsearch             " Highlight search results

" Enable auto-completion and IntelliSense features
set completeopt=menu,menuone,noselect  " Set up completion options
set omnifunc=syntaxcomplete#Complete " Enable omnifunc completion (works with some languages like Python)

" Show matching parentheses and brackets
set showmatch            " Highlight matching parenthesis and brackets
set matchtime=2          " Time for match highlight to disappear

" Set a status line with useful information
set laststatus=2         " Always show status line
set statusline=%F\ %y\ %m\ %r\ %l/%L:%c\ %p%%  " Custom status line format

" Enable file explorer
nnoremap <leader>e :Ex<CR>  " Press leader (usually \) followed by 'e' to open file explorer

" Show line and column numbers in the status line
set ruler

" Enable clipboard integration (optional, if your Vim has clipboard support)
set clipboard=unnamedplus " Use the system clipboard for copy/paste

" Configure terminal transparency
" If you want Vim to have a transparent background, configure your terminal emulator (like iTerm, Alacritty, or others)
" with transparency instead of changing Vim itself.
" This would usually be set in your terminal's configuration file like iTerm2, Alacritty, etc.
" Vim itself doesn't handle transparency directly.

" Additional optional configuration
set nowrapscan          " Don't wrap searches
set lazyredraw          " Don't redraw while executing macros

" Enable folding
set foldmethod=indent  " Fold by indentation
set foldlevelstart=99  " Start with all folds open

" Enable auto-formatting (auto-format on save for certain filetypes)
autocmd BufWritePre *.js,*.ts,*.json,*.css,*.html :normal! gg=G " Automatically format on save for JS/TS/CSS/HTML


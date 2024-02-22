vim9script

set nocompatible      # Sets to Vim mode.
set encoding=utf-8    # Sets encoding.

filetype plugin indent on  # Loads plugins according to detected filetype.
syntax on                  # Enable syntax highlighting.

set autoindent      # Indent according to previous line.
set expandtab       # Uses spaces instead of tabs.
set softtabstop=4   # Tab key indents 4 spaces.
set shiftwidth=4    # Presses '>>' indents by 4 spaces.
set shiftround      # Presses '>>' indents to next multiple of 'shiftwidth'.

set backspace=indent,eol,start  # Makes backspace key work as expect.
set laststatus=2                # Always shows statusline.
set display=lastline            # Shows as much as possible of the last line.

set hidden  # Switches between buffers without having to save first.

set mouse=a                 # Enables mouse scrolling.
set clipboard+=unnamedplus  # Uses system clipboard.

set showmode    # Shows current mode in command-line.
set showcmd     # Shows typed keys.

set incsearch   # Highlights while searching.
set hlsearch    # Keeps the search results highlighted.

set ttyfast     # Faster redrawing.

set splitbelow  # Opens new buffer below the current buffer.
set splitright  # Opens new buffer right of the current buffer.

set number      # Shows line numbers.
set wrapscan    # Searches wrap around end-of-file.
set report=0    # Always reports changed lines.

set listchars=eol:$,lead:\ ,trail:·,tab:>-,extends:+,precedes:<,leadmultispace:\|\ \ \ ,

# Puts all temp files under the cache directory.
set backup
set backupdir=$XDG_CACHE_HOME/vim/backup//
set backupext=-vimbackup
set backupskip=
set directory=$XDG_CACHE_HOME/vim/swap//
set updatecount=100
set undofile
set undodir=$XDG_CACHE_HOME/vim/undo//
set viminfo='100,n$XDG_CACHE_HOME/vim/viminfo

# Set XDG Base Directory Specification.
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_BIN_HOME=$HOME/.local/bin
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg


# Set completion files path.
FPATH="$ZDOTDIR/completion:${FPATH}"


# Set Z jump around environment variables.
export _Z_DATA="$XDG_CACHE_HOME/z"
export _ZO_DATA_DIR="$XDG_DATA_HOME"


# Set "less" command history filepath.
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"


# Set Homebrew PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"


# Set Python startup filepath.
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/python_startup.py"
export PIP_CACHE_DIR="$XDG_CACHE_HOME/pip"


# Set Go environment variables.
export GOENV="$HOME/go/env"
export GOCACHE="$XDG_CACHE_HOME/go"


# Set Rust environment variables.
export RUSTUP_HOME="$HOME/rust/rustup"
export CARGO_HOME="$HOME/rust/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Set bat environment variables.
export BAT_THEME="Catppuccin-mocha"
export BAT_PAGER="less -FRS"

# Set fzf environment variables.
# Oh-my-zsh's fzf plugin will do this:
# export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"
export FZF_DEFAULT_OPTS=" \
--info=inline-right \
--prompt=' ' \
--pointer='' \
--border=sharp \
--preview-window='border-left' \
--color=gutter:-1,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
"
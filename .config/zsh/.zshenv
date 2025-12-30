# Set XDG Base Directory Specification.
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_BIN_HOME=$HOME/.local/bin
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_RUNTIME_DIR=/tmp
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export PATH="$XDG_BIN_HOME:$PATH"

# Set Homebrew PATH.
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"

# Set completion files path.
FPATH="$ZDOTDIR/completion:${FPATH}"

# Set Language if possible.
export LANG=zh_TW.UTF-8

# Set Z jump around environment variables.
export _Z_DATA="$XDG_CACHE_HOME/z"
export _ZO_DATA_DIR="$XDG_DATA_HOME"

# Set "less" command history filepath and character set.
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export LESSCHARSET=UTF-8

# Set Pip cache directory.
export PIP_CACHE_DIR="$XDG_CACHE_HOME/pip"

# Set tensorflow.keras cache dir.
export KERAS_HOME="$XDG_CACHE_HOME/keras"

# Set npm environment variables.
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export PATH="$XDG_DATA_HOME/npm/bin:$PATH"

# Set node.js environment variables.
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/node_repl_history"

# Set Bun environment variables.
export PATH="$XDG_CACHE_HOME/.bun/bin:$PATH"

# Set Go environment variables.
export GOENV="$HOME/go/env"
export GOCACHE="$XDG_CACHE_HOME/go-build"
export PATH="$HOME/go/bin:$PATH"

# Set Rust environment variables.
export RUSTUP_HOME="$HOME/rust/rustup"
export CARGO_HOME="$HOME/rust/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Set bat environment variables.
export BAT_THEME="Catppuccin Frappe"
export BAT_PAGER="less -FRS"

# Set fzf environment variables.
# Oh-my-zsh's fzf plugin will do this:
# export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"
export FZF_DEFAULT_OPTS=" \
--info=inline-right \
--prompt=' ' \
--border=sharp \
--preview-window='border-left' \
--color=bg+:#414559 \
--color=fg:#C6D0F5 \
--color=fg+:#C6D0F5 \
--color=hl:#E78284 \
--color=hl+:#E78284 \
--color=info:#CA9EE6 \
--color=label:#C6D0F5 \
--color=border:#737994 \
--color=header:#E78284 \
--color=marker:#BABBF1 \
--color=prompt:#CA9EE6 \
--color=pointer:#F2D5CF \
--color=spinner:#F2D5CF \
--color=selected-bg:#51576D \
"

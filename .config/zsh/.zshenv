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

# Set language.
export LANG=zh_TW.UTF-8

# Set "z" command environment variables.
export _Z_DATA="$XDG_CACHE_HOME/z"
export _ZO_DATA_DIR="$XDG_DATA_HOME"

# Set "less" command history filepath and character set.
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export LESSCHARSET=UTF-8

# Set Python history filepath. (only works for Python 3.13+)
export PYTHON_HISTORY="$XDG_CACHE_HOME/python_history"

# Set Pip cache directory.
export PIP_CACHE_DIR="$XDG_CACHE_HOME/pip"

# Set tensorflow.keras cache dir.
export KERAS_HOME="$XDG_CACHE_HOME/keras"

# Set NPM environment variables.
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export PATH="$XDG_DATA_HOME/npm/bin:$PATH"

# Set Node.js environment variables.
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

# Set "bat" command environment variables.
export BAT_THEME="Catppuccin Frappe"
export BAT_PAGER="less -FRS"

# Set "fzf" command environment variables.
export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"
export FZF_DEFAULT_OPTS=" \
--info=inline-right \
--prompt='> ' \
--scrollbar='▌' \
--gutter=' ' \
--marker='+ ' \
--pointer='' \
--border=none \
--preview-window='border-left' \
--color=bg+:-1 \
--color=fg:-1 \
--color=fg+:yellow \
--color=hl:red \
--color=hl+:red:bold \
--color=marker:green:bold \
--color=selected-fg:green:bold \
--color=info:cyan \
--color=border:gray \
--color=prompt:green \
--color=pointer:yellow \
--color=spinner:yellow \
"

# Set "albumentationsx" Python library environment variables to disable telemetry features.
export ALBUMENTATIONS_NO_TELEMETRY=1
export ALBUMENTATIONS_OFFLINE=1

# Set Pi coding agent environment variables.
export PI_CODING_AGENT_DIR="$XDG_CONFIG_HOME/pi/agent"
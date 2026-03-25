# Homebrew paths.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# User custom command aliases.
source $ZDOTDIR/aliases.sh

# Initializes command tab-completion.
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

source $ZDOTDIR/uv_run_mod.zsh

# Enable shell integration in VSCode integrated terminal.
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# Setup zsh-autosuggestions.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Setup zsh-syntax-highlighting. The script must be sourced at the end of the .zshrc file.
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup fzf key bindings and fuzzy completion for zshell.
source <(fzf --zsh)

# Setup zoxide for zshell.
eval "$(zoxide init zsh)"

# Setup starship for zshell.
eval "$(starship init zsh)"
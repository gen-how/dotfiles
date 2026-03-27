# Homebrew paths.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# Setup custom command aliases.
source $ZDOTDIR/alias.zsh

# Setup completions.
source $ZDOTDIR/completion.zsh

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
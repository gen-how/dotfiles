# This should be called before compinit.
zmodload zsh/complist

autoload -Uz compinit; compinit

# Completion with hidden files.
_comp_options+=(globdots)

setopt LIST_PACKED      # The completion menu takes less space.
setopt MENU_COMPLETE    # Automatically select first option in menu.
setopt AUTO_PARAM_SLASH # Automatically add '/' instead of ' ' if the option is a directory.

# The style pattern of completion:
#   ':completion:<function>:<completer>:<command>:<argument>:<tag>'
#
# Defines the completer:
#   - `_complete`: The main completer.
#   - `_approximate`: This is similar to `_complete`, except that it will try to correct what you’ve typed already if no match is found.
#   - `_expand_alias`: Expand an alias be typed. It needs to be declared before `_complete`. We can use this with keystroke `CTRL+x a` by default.
#   - `_extensions`: Complete the glob `*.` with the possible file extensions.
zstyle ':completion:*' completer _extensions _complete _approximate

# Uses cache to speed up some commands.
zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path "$ZDOTDIR/.zcompcache"

# Selects completion options with arrow keys.
zstyle ':completion:*' menu select

zstyle ':completion:*' complete-options true

zstyle ':completion:*' file-sort modifiacation


# Formatting the display.
#   - `%F{<color>} %f`: Change the foreground color with <color>.
#   - `%K{<color>} %k`: Change the background color with <color>.
#   - `%B %b`: Bold.
#   - `%U %u`: Underline.
zstyle ':completion:*:*:*:*:descriptions' format '%B%F{cyan}🏷️  %d %f%b'
zstyle ':completion:*:*:*:*:corrections' format '%B%F{yellow}🚧  %d (errors: %e) %f%b'
zstyle ':completion:*:*:*:*:messages' format '%B%F{purple}💬  %d %f%b'
zstyle ':completion:*:*:*:*:warnings' format '%B%F{red}⛔  No matches found %f%b'

# Colors for files and directory
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

# Shows options in groups.
zstyle ':completion:*' group-name ''

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands

zstyle ':completion:*' keep-prefix true

zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'


# Evaluate this block if "uv" is installed.
if [ -x "$(command -v uv)" ]; then
    # Defines a patch function for `uv run ...` command.
    _uv_run_mod() {
        # If "run" subcommand are typed and not started with "-" options.
        if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
            local venv_binaries
            if [[ -d .venv/bin ]]; then
                venv_binaries=( ${(@f)"$(
                    _call_program files ls -1 .venv/bin 2>/dev/null
                )"} )
                venv_binaries=( ${venv_binaries:#(activate|activate_this.py|activate.bat|activate.csh|activate.fish|activate.nu|activate.ps1|deactivate.bat)} )
            fi

            local entry_points
            if [[ -f pyproject.toml ]]; then
                entry_points=( ${(@f)"$(
                    sed -n '/^\[project\.scripts\]/,/^\[/p' pyproject.toml |
                    grep '=' |
                    sed 's/\s*=.*//' |
                    tr -d ' '
                )"} )
            fi

            local py_files
            py_files=( *.py(N) )

            local directories
            directories=( *(/) )
            directories=( ${directories:#(__pycache__|.git|.pytest_cache)} )

            _alternative \
                "scripts:entry points:compadd -a entry_points" \
                "pyfiles:python files:compadd -a py_files" \
                "dirs:directories:compadd -a directories" \
                "binaries:venv binaries:compadd -a venv_binaries"
                # "files:filenames:_files" \
        else
            # Fallback to official one.
            _uv "$@"
        fi
    }
    compdef _uv_run_mod uv
fi
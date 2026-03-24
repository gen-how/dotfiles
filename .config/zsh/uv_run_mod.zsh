# Evaluate this block if "uv" is installed.
if [ -x "$(command -v uv)" ]; then
    # Comment this line if "uv" is installed from Homebrew.
    # eval "$(uv generate-shell-completion zsh)"

    # Defines a patch function for `uv run ...` command.
    _uv_run_mod() {
        if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
            # If "run" subcommand are typed and not started with "-" options.

            # local venv_binaries
            # if [[ -d .venv/bin ]]; then
            #     venv_binaries=( ${(@f)"$(
            #         _call_program files ls -1 .venv/bin 2>/dev/null
            #     )"} )
            # fi

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

            _alternative \
                "scripts:entry point:(${(j: :)entry_points})" \
                "pyfiles:python file:(${(j: :)py_files})" \
                "dirs:directory:(${(j: :)directories})"
                # 'files:filename:_files' \
                # "binaries:venv binary:(($venv_binaries))"
        else
            # Fallback to official one.
            _uv "$@"
        fi
    }
    compdef _uv_run_mod uv
fi
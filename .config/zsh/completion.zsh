autoload -Uz compinit; compinit


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
            directories=( ${directories:#(__pycache__)} )

            _alternative \
                "scripts:entry points:compadd -a entry_points" \
                "pyfiles:python files:compadd -a py_files" \
                "dirs:directories:compadd -a directories" \
                "binaries:venv binaries:compadd -a venv_binaries" \
                ""
                # "files:filenames:_files" \
        else
            # Fallback to official one.
            _uv "$@"
        fi
    }
    compdef _uv_run_mod uv
fi
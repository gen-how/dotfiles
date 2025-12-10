CMD=$'\033[1;36m'
RST=$'\033[0m'

brew update && output=$(brew outdated)
if [[ -z "$output" ]]; then
    echo "No outdated packages."
else
    echo "$output"
    read -p "Execute '${CMD}brew upgrade${RST}' to upgrade all packages? [y/N]: " choice
    if [[ "$choice" =~ ^[Yy] ]]; then
        brew upgrade
    fi
fi
CYAN=$'\033[0;36m'
BOLD=$'\033[1m'
RST=$'\033[0m'

log() { echo "${CYAN}==>${RST}${BOLD} $1${RST}"; }

# Gets the directory of the script.
dotfiles_dir=$(dirname $0)

# Use the rsync command to copy the dotfiles to the XDG_CONFIG_HOME directory.
log "Deploying dotfiles to \"${XDG_CONFIG_HOME}\""
rsync -auv ${dotfiles_dir}/.config/ ${XDG_CONFIG_HOME}\
    --exclude "nvim"\

log "Deploying dotfiles to \"${XDG_BIN_HOME}\""
rsync -auv ${dotfiles_dir}/.local/bin/ ${XDG_BIN_HOME}\

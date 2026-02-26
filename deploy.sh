RST=$(tput sgr0)  # Reset all attributes
B=$(tput bold)    # Bold
BU=$(tput smul)   # Begin underline
EU=$(tput rmul)   # Exit underline
RD=$(tput setaf 1)
GN=$(tput setaf 2)
YE=$(tput setaf 3)
BL=$(tput setaf 4)
MG=$(tput setaf 5)
CY=$(tput setaf 6)
WH=$(tput setaf 7)


info() { echo "${BL}==> ${RST}${B}$1${RST}"; }

# Gets the directory of the script.
dotfiles_dir=$(dirname $0)

# Use the rsync command to copy the dotfiles to the XDG_CONFIG_HOME directory.
info "Deploying dotfiles to \"${XDG_CONFIG_HOME}\""
rsync -auv ${dotfiles_dir}/.config/ ${XDG_CONFIG_HOME}\
    --exclude "nvim"\

info "Deploying dotfiles to \"${XDG_BIN_HOME}\""
rsync -auv ${dotfiles_dir}/.local/bin/ ${XDG_BIN_HOME}\

info "Deploying dotfiles to \"${HOME}/.codex\""
rsync -auv ${dotfiles_dir}/.codex/ ${HOME}/.codex/\
# Gets the directory of the script.
dotfiles_dir=$(dirname $0)

# Use the rsync command to copy the dotfiles to the XDG_CONFIG_HOME directory.
echo "Deploying dotfiles to \"${XDG_CONFIG_HOME}\""
rsync -auv ${dotfiles_dir}/.config/ ${XDG_CONFIG_HOME}\
    --exclude "nvim"\
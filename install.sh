# List of dotfile directories to install
dirs="git tmux vim"

# Install dotfiles from each directory
for dir in $dirs; do
    cd $dir
    . install.sh
    cd ..
done

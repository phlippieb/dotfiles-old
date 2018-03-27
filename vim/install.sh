# List of dotfiles to install
files="vimrc"

echo "==> Installing vim dotfiles..."

# Install each dotfile
for file in $files; do
    echo "==> Installing .$file..."
    
    # If the dotfile exists, back it up
    if [ -f ~/.$file ]; then
        backup_file=".$file.$(date +'%Y%m%d%H%M%S')"
        echo "--> Existing dotfile found. Backing up to $backup_file..."
        # TODO: 
        # cp ~/.$file ~/$backup_file
        echo "--> Done."
        echo "--> Removing existing dotfile..."
        # TODO:
        # rm ~/.$file
        echo "--> Done."
    fi
    
    # Install the new dotfile by symlinking here
    # TODO:
    # ln -s ./$file ~/.$file
    echo "==> Done."
done

echo "==> Vim dotfiles installed."
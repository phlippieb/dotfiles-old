# List of dotfiles to install
files="gitconfig gitignore_global git-completion.bash"

echo "installing $(tput setaf 4 && tput bold)git$(tput sgr0) dotfiles..."

# Install each dotfile
for file in $files; do
    echo " - installing $(tput setaf 4).$file$(tput sgr0)..."
    
    # If the dotfile exists, back it up
    if [ -f ~/.$file ]; then
        backup_file=".$file.$(date +'%Y%m%d%H%M%S')"
        echo " - $(tput setaf 3)existing file found.$(tput sgr0)"
        echo "   backing up to $backup_file"
        cp ~/.$file ~/$backup_file
        rm ~/.$file
    fi
    
    # Install the new dotfile by symlinking here
    ln -s ./$file ~/.$file
    echo " - $(tput setaf 2)done.$(tput sgr0)"
done
echo

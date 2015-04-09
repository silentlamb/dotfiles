function dotfiles_install_common_vim
{
	if [ -d ~/.vim ]; then
		if [ -L ~/.vim ]; then
			rm ~/.vim
		else
			echo "${HOME}/.vim directory exists, remove it manually"
			exit 1
		fi
	fi

	ln -sf ~/dotfiles/common/vim ~/.vim
	ln -sf ~/dotfiles/common/vim/vimrc ~/.vimrc
	ln -sf ~/.vim ~/.nvim
	ln -sf ~/.vimrc ~/.nvimrc
}


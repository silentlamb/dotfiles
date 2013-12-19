function dotfiles_install_common_mc 
{
	# TODO: Add guard to existing .config/mc directory
	ln -sf ~/dotfiles/common/mc ~/.config/mc
	# TODO: Check whether ~/.local/share/mc exists or not
	ln -sf ~/dotfiles/common/mc/skins ~/.local/share/mc/skins
}


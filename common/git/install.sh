function dotfiles_install_common_git
{
#	git config --global alias.alias !git-show-aliases
	git config --global alias.deleted log --diff-filter D --summary
#	git config --global alias.env !env
	git config --global alias.fixtypo commit --amend
#	git config --global alias.forgotten !git log -n1 --pretty tformat:%s%n%n%b | git commit -F - --amend
	git config --global alias.latest log -n2 --pretty full --stat --graph
	git config --global alias.lock update-index --assume-unchanged
	#git config --global alias.locked !git ls-files -v | grep ^[[:lower:]] | cut -d' ' -f2
#	git config --global alias.newbranch !git-new-branch
	git config --global alias.root rev-parse --show-toplevel
	git config --global alias.stage add
	git config --global alias.staged diff --staged
#	git config --global alias.this !git init && git add . && git commit -m "Initial commit"
	git config --global alias.track add
	git config --global alias.trackbranch checkout --track
	git config --global alias.uncommit reset --soft HEAD^
	git config --global alias.unlock update-index --no-assume-unchanged
	git config --global alias.unstage reset HEAD
	git config --global alias.untrack rm --cached
	git config --global alias.uploadbranch push -u origin
	git config --global color.branch.current magenta bold
	git config --global color.branch.local magenta
	git config --global color.branch.plain blue bold
	git config --global color.branch.remote blue
	git config --global color.diff.commit magenta bold
	git config --global color.diff.frag black bold
	git config --global color.diff.func yellow bold
	git config --global color.diff.meta black bold
	git config --global color.diff.new magenta bold
	git config --global color.diff.old blue
	git config --global color.diff.plain white
	git config --global color.diff.whitespace black black
	git config --global color.grep.context white
	git config --global color.grep.filename black bold
	git config --global color.grep.function yellow bold
	git config --global color.grep.linenumber cyan bold
	git config --global color.grep.match green bold
	git config --global color.grep.selected green
	git config --global color.status.added magenta bold
	git config --global color.status.branch yellow bold
	git config --global color.status.changed magenta
	git config --global color.status.header black bold
	git config --global color.status.nobranch red bold
	git config --global color.status.untracked blue
	git config --global core.editor vim
	git config --global diff.db3.cachetextconv true
	git config --global diff.db3.textconv sqlite-dump
	git config --global diff.exif.cachetextconv true
	git config --global diff.exif.textconv exiftool
	git config --global merge.keepbackup false
	git config --global merge.tool p4merge
	git config --global mergetool.p4merge.cmd p4merge '$BASE' '$LOCAL' '$REMOTE' '$MERGED'
	git config --global mergetool.p4merge.keepbackup false
	git config --global mergetool.p4merge.keeptemporaries false
	git config --global mergetool.p4merge.trustexitcode false
	git config --global push.default upstream
	git config --global status.showuntrackedfiles normal
}


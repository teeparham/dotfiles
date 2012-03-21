# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# git bash completion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

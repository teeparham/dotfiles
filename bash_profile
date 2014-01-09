source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/aliases.sh
source ~/.bash/functions.sh

[[ -s ~/.bash_private ]] && source ~/.bash_private

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

eval "$(direnv hook bash)"
eval "$(~/pro/neighborland/scripts/bin/neighbor init -)"

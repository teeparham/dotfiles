source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/aliases.sh
source ~/.bash/functions.sh

[[ -s ~/.bash_private ]] && source ~/.bash_private

source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

eval "$(direnv hook bash)"

# eval `keychain --agents gpg,ssh --eval id_rsa`
# export GPG_TTY=`tty`

source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/aliases.sh
source ~/.bash/functions.sh

[[ -s ~/.bash_private ]] && source ~/.bash_private

source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'

# git bash completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# heroku bash completion
source /Users/tee/Library/Caches/heroku/autocomplete/bash_setup

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

eval "$(direnv hook bash)"

# eval `keychain --agents gpg,ssh --eval id_rsa`
# export GPG_TTY=`tty`

eval "$(mcfly init bash)"

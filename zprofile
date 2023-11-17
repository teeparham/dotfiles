source ~/.zsh/path.sh
source ~/.zsh/env.sh
source ~/.zsh/aliases.sh
source ~/.zsh/functions.sh

[[ -s ~/.zsh_private ]] && source ~/.zsh_private

eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

eval "$(direnv hook zsh)"
eval "$(mcfly init zsh)"

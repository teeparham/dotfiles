source ~/.zsh/path.sh
source ~/.zsh/env.sh
source ~/.zsh/aliases.sh
source ~/.zsh/functions.sh

[[ -s ~/.zsh_private ]] && source ~/.zsh_private

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

# git completion
zstyle ':completion:*:*:git:*' script /opt/homebrew/opt/git/share/zsh/site-functions/git-completion.bash
fpath=(/opt/homebrew/opt/git/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit

setopt PROMPT_SUBST
PROMPT='%F{green}%~%f %F{yellow}${vcs_info_msg_0_}%f$ '

eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

eval "$(direnv hook zsh)"
eval "$(mcfly init zsh)"

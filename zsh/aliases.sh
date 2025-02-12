alias eg='env | grep $1'
alias hg='history | grep $1'
alias pg='ps -ef | grep $1'
alias lsl='ls -Alh'
alias lst='ls -Alht'

alias hiddenfileson='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hiddenfilesoff='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

alias gc='git commit -a -m $1'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl="git log --date=human --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset'"
alias glr='gl -30'
alias glme='gl --author=tee'
alias gitup='git branch --set-upstream-to=origin/master master'
alias push='git push'
alias pull='git pull'
alias amend='git commit --amend'
alias stash='git stash save -u wip'

# add -a to auto-correct: `gdcop -a`
alias gdcop="git diff --name-only | grep '\.rb' | tr '\n' ' ' | sed 's/,$/\n/' | xargs rubocop"

export GITMASK='rb|js|html|erb|haml|slim|css|scss|jsx|rake|json|yml|c|h|cpp'
alias gitwho="git ls-tree --name-only -r HEAD | grep -E '\.($GITMASK)$' | xargs -n1 git blame --line-porcelain | grep '^author '|sort|uniq -c|sort -nr"

alias be='bundle exec'
alias bo='bundle outdated'
alias bos='bundle outdated --strict'
alias bake='be rake'
alias gemwat='gem dep --rev $1'

alias prep='rails parallel:prepare'
alias pt='rails parallel:test'
alias rc='rails c'
alias rs='rails s'
alias t='rails test $1'
alias cacheon='touch tmp/caching-dev.txt'
alias cacheoff='rm tmp/caching-dev.txt'

alias dockup='docker-compose up -d'
alias dockdown='docker-compose down'
alias dockredis='docker run -p 6379:6379 -p 8001:8001 redis/redis-stack'

alias wtf3000='lsof -wni tcp:3000'

alias ct='/usr/local/bin/ctags -R .'

alias dizzle="ruby -e \"require 'ffaker'; puts FFaker::DizzleIpsum.paragraph\" | tee >(pbcopy)"
alias hipster="ruby -e \"require 'ffaker'; puts FFaker::HipsterIpsum.paragraph\" | tee >(pbcopy)"

# https://gist.github.com/lelandbatey/8677901
alias whiteboard='convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2'

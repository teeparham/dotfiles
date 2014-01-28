alias hg='history | grep $1'
alias eg='env | grep $1'
alias lsl='ls -l'
alias lsa='ls -la'

alias hiddenfileson='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hiddenfilesoff='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

alias gc='git commit -a -m $1'
alias gs='git status'
alias gd='git diff'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --no-merges"
alias gitup='git branch --set-upstream-to=origin/master master'
alias glme='git log --author=tee'
alias push='git push'
alias pull='git pull'

alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bos='bundle outdated --strict'
alias bu='bundle update'
alias bake='be rake'
alias bg='be guard -c'

alias prep='rake parallel:prepare[6]'
alias pt='rake parallel:test[6]'
alias rc='rails c'
alias rs='rails s'
alias t='spring testunit $1'

alias wtf3000='lsof -wni tcp:3000'

alias redis='redis-server /usr/local/etc/redis.conf'

alias dizzle="ruby -e \"require 'ffaker'; puts Faker::DizzleIpsum.paragraph\""
alias hipster="ruby -e \"require 'ffaker'; puts Faker::HipsterIpsum.paragraph\""

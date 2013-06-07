alias hg='history | grep $1'
alias eg='env | grep $1'
alias lsl='ls -l'
alias lsa='ls -la'

alias hiddenfileson='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hiddenfilesoff='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

alias gc='git commit -a -m $1'
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias glme='git log --author=tee'
alias push='git push'
alias pull='git pull'

alias rs='./script/rails server'
alias rc='./script/rails console'
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'
alias bake='be rake'
alias bautotest='be autotest -c'
alias bautotestcfg='be autotest -r .autotest'
alias bg='be guard -c'
alias z='zeus'
alias zs='zeus start'
alias zprep='zeus rake parallel:prepare[6]'
alias zp='zeus rake parallel:test[6]'
alias redis='redis-server /usr/local/etc/redis.conf'

alias dizzle="ruby -e \"require 'ffaker'; puts Faker::DizzleIpsum.paragraph\""
alias hipster="ruby -e \"require 'ffaker'; puts Faker::HipsterIpsum.paragraph\""

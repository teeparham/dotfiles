alias hg='history | grep $1'
alias eg='env | grep $1'
alias lsl='ls -Alh'
alias lst='ls -Alht'

alias hiddenfileson='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hiddenfilesoff='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

alias gc='git commit -a -m $1'
alias gs='git status'
alias gd='git diff'
alias gl="git log --date=local --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset'"
alias gitup='git branch --set-upstream-to=origin/master master'
alias glme='gl --author=tee'
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
alias blech='rspec --no-profile'
alias gemwat='gem dep --rev $1'

alias prep='rake parallel:prepare'
alias pt='rake parallel:test'
alias rc='rails c'
alias rs='rails s'
alias t='rails test $1'

alias wtf3000='lsof -wni tcp:3000'
alias rdoc2md='ruby ~/.ruby/rdoc2md.rb $1'
alias find_unused_images='ruby ~/.ruby/find_unused_images.rb'

alias redis='redis-server /usr/local/etc/redis.conf'
alias ct='/usr/local/bin/ctags -R .'

alias dizzle="ruby -e \"require 'ffaker'; puts FFaker::DizzleIpsum.paragraph\" | tee >(pbcopy)"
alias hipster="ruby -e \"require 'ffaker'; puts FFaker::HipsterIpsum.paragraph\" | tee >(pbcopy)"

# https://gist.github.com/lelandbatey/8677901
alias whiteboard='convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2'

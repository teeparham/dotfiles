alias hg='history | grep $1'
alias eg='env | grep $1'
alias gc='git commit -a -m $1'
alias gs='git status'
alias gd='git diff'
alias lsl='ls -l'
alias lsa='ls -la'
alias up2master='git co master && git pullm && git pulld && git pushm && git co dev && git st' 
alias up2prod='git co production && git pull origin production && git pullm && git push origin production && git co dev && git st'

alias r3='./script/rails server'
alias r3c='./script/rails console'
alias u3='RACK_ENV=none bundle exec unicorn_rails -l 3000'
alias bake='bundle exec rake'
alias bautotest='bundle exec autotest -c'
alias bautotestcfg='bundle exec autotest -r .autotest'
alias bails='./script/rails'
alias bard='bundle exec guard -c'
alias redis='redis-server /usr/local/etc/redis.conf'

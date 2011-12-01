# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Postgres
export PATH=/usr/local/pgsql/bin:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Bash completion
[[ -f /opt/local/etc/bash_completion ]] && . /opt/local/etc/bash_completion
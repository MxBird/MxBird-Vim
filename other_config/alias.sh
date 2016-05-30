#Service Command
alias start_postgres="postgres -D /usr/local/var/postgres &"
alias start_memcached="/usr/local/opt/memcached/bin/memcached -d"

#Zeus
alias start_zeus="zeus start"

# Nginx
alias start_nginx="sudo nginx"
alias restart_nginx="sudo nginx -s reload"
alias stop_nginx="sudo nginx -s stop"

# Mysql
alias start_mysql="mysql.server start"
#alias start_mysql="/usr/local/opt/mysql55/bin/mysql.server start"
##alias stop_mysql="/usr/local/opt/mysql55/bin/mysql.server stop"
alias stop_mysql="mysql.server stop"

# Mongodb
alias start_mongodb="mongod --fork --config /usr/local/etc/mongod.conf"
alias stop_mongodb="mongo admin --eval \"db.shutdownServer()\""
alias rm_mongodblock="rm /usr/local/var/mongodb/mongod.lock"

# Redis
alias start_redis_default="redis-server /usr/local/etc/redis.conf"
alias start_redis_6382="redis-server /usr/local/etc/redis6382.conf"
REDIS_PID=/usr/local/var/run/redis.pid
if [ -f $REDIS_PID ]; then
	alias stop_redis="kill `cat $REDIS_PID`"
fi

# Git
alias gc_master="git branch --merged master | grep -v \"\* master\" | grep -v \"develop\"| xargs -n 1 git branch -d"
alias gc_develop="git branch --merged develop | grep -v \" master\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gc_head="git branch --merged | grep -v \"\*\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gc_ci="git branch -r | grep ci_ | sed 's/origin\///g' | xargs -n 1 git push origin --delete"

# DNS
alias ehost="sudo vi /etc/hosts"
alias clean_dns_cache="sudo killall -HUP mDNSResponder"

# System command
alias clean_memory='sudo purge'
alias update_software='sudo softwareupdate -i -a'

# cap deploy
alias deploy_staging="cap staging deploy"
alias deploy_production="cap production deploy"

#Other
alias up='uptime'
alias reload_alias="source ~/.alias.sh"

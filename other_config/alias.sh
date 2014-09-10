#Service Command
alias start_rails="thin start -p 9527"
alias start_postgres="postgres -D /usr/local/var/postgres &"
alias start_memcached="/usr/local/opt/memcached/bin/memcached -d"

#start Zeus
alias start_zeus="zeus start"

#start sinatra
alias start_sinatra="pry -r ./boot.rb"

alias start_nginx="sudo nginx"
alias restart_nginx="sudo nginx -s reload"
alias stop_nginx="sudo nginx -s stop"

alias start_redis_default="redis-server /usr/local/etc/redis.conf"
alias start_redis_6382="redis-server /usr/local/etc/redis6382.conf"
REDIS_PID=/usr/local/var/run/redis.pid
if [ -f $REDIS_PID ]; then
	alias stop_redis="kill `cat $REDIS_PID`"
fi

alias start_mongodb="mongod --fork --config /usr/local/etc/mongod.conf"
alias stop_mongodb="mongo admin --eval \"db.shutdownServer()\""
alias rm_mongodb_lock="rm /usr/local/var/mongodb/mongod.lock"

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"

#Other
alias up='uptime'
alias vihosts="sudo vi /etc/hosts"
alias reload_alias="source ~/.alias.sh"


alias clean_dns_cache="dscacheutil -flushcache"

alias gc_master="git branch --merged master | grep -v \"\* master\" | grep -v \"develop\"| xargs -n 1 git branch -d"
alias gc_develop="git branch --merged develop | grep -v \" master\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gc_head="git branch --merged | grep -v \"\*\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias gc_ci="git branch -r | grep ci_ | sed 's/origin\///g' | xargs -n 1 git push origin --delete"

alias ehost="sudo vi /etc/hosts"

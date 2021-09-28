[ -s ~/Code/pco/bin/pco ] && eval "$(~/Code/pco/bin/pco init -)"

export RBENV_ROOT=$HOME/.rbenv
export MYSQL_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_PORT=3307

source $HOME/pco-box/env.sh

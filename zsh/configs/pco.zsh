[ -s ~/Code/pco/bin/pco ] && eval "$(~/Code/pco/bin/pco init -)"

[ -d "$HOME/pco-box" ] && source $HOME/pco-box/env.sh

[ -d "$HOME/.docker/bin" ] && PATH=$PATH:~/.docker/bin

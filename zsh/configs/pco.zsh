if [[ -d $HOME/pco-box ]]; then
  source $HOME/pco-box/env.sh
fi

if [[ -d $HOME/Code/pco ]]; then
  eval "$($HOME/Code/pco/bin/pco init -)"
fi

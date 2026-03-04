if [[ -d $HOME/pco-box ]]; then
  source $HOME/pco-box/env.sh
fi

if [[ -d $HOME/Code/pco ]]; then
  eval "$($HOME/Code/pco/bin/pco init -)"
fi

if [[ -e /usr/local/bin/devbox ]]; then
  eval "$(devbox global shellenv)"
fi

if [[ -e "/opt/homebrew/bin/brew" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

eval "$(mise activate zsh)"

if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

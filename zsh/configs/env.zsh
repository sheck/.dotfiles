# macOS
if [[ `uname` == "Darwin" ]]; then
  export THOR_MERGE=mergetool-for-rails
elif [[ `uname` == "Linux" ]]; then
  # linuxbrew
  eval "$(/home/ubuntu/.linuxbrew/bin/brew shellenv)"
fi

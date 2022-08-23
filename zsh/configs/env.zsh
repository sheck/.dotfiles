if [[ `uname` == "Darwin" ]]; then
  # macOS
  export THOR_MERGE=mergetool-for-rails
  # New homebrew thing
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif command apt > /dev/null; then
  # debian
fi

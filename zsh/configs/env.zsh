if [[ `uname` == "Darwin" ]]; then
  # macOS
  export THOR_MERGE=mergetool-for-rails

  # New homebrew thing
  if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
elif command apt > /dev/null; then
  # debian
fi

if [[ `uname` == "Darwin" ]]; then
  # macOS
  export THOR_MERGE=mergetool-for-rails
elif command apt > /dev/null; then
  # debian
fi

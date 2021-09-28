if [[ `uname` == "Darwin" ]]; then
  # macOS
  export THOR_MERGE=opendiff
elif command apt > /dev/null; then
  # debian
fi


# m1 homebrew
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# linuxbrew
if [[ -f "//home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# `git mark-safe` (or `mkdir .git/safe`) in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Use locally installed versions of npm executables
PATH=".git/safe/../../node_modules/.bin:$PATH"

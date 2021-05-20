eval "$(rbenv init -)"

# `git mark-safe` (or `mkdir .git/safe`) in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Use locally installed versions of npm executables
PATH=".git/safe/../../node_modules/.bin:$PATH"

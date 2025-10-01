# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Use locally installed versions of npm executables
PATH=".git/safe/../../node_modules/.bin:$PATH"

export -U PATH

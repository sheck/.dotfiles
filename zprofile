# Baseline PATH entries that must be available before direnv/devbox
# modify the environment. direnv snapshots "before" PATH on hook,
# so anything not in PATH at that point gets dropped.
PATH="$HOME/.local/bin:$HOME/.bin:/usr/local/sbin:$PATH"
export -U PATH

# Better history
# Credits to https://coderwall.com/p/jpj_6q/zsh-better-history-searching-with-arrow-keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Load/setup autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# m1
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# linux
[ -f /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh ] && . /home/linuxbrew/.linuxbrew/etc/profile.d/autojump.sh

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*~*.zwc(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*~*.zwc(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# `git mark-safe` (or `mkdir .git/safe`) in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Use locally installed versions of npm executables
PATH=".git/safe/../../node_modules/.bin:$PATH"

PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export -U PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

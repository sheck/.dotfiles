# Display branch name and dirty status in prompt
dirty_branch_marker() {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo " %{$fg_bold[red]%}✗%{$reset_color%}"
}

# JJ (Jujutsu) prompt - shows change ID and uncommitted changes
jj_prompt_info() {
  jj root &> /dev/null || return

  local change_id=$(jj log -r @ --no-graph -T 'change_id.short(8)' 2>/dev/null)
  local dirty=""
  [[ -n "$(jj diff --stat 2>/dev/null)" ]] && dirty=" %{$fg_bold[red]%}✗%{$reset_color%}"

  echo " %{$fg_bold[magenta]%}${change_id}%{$reset_color%}${dirty}"
}

# Git prompt - shows branch name if applicable (skips if JJ repo)
git_prompt_info() {
  jj root &> /dev/null && return

  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}$(dirty_branch_marker)"
  fi
}

setopt promptsubst

# Allow exported PS1 variable to override default prompt.
PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(jj_prompt_info)$(git_prompt_info) %# '

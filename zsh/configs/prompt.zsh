# Display branch name and dirty status in prompt
dirty_branch_marker() {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo " %{$fg_bold[red]%}✗%{$reset_color%}"
}

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}$(dirty_branch_marker)"
  fi
}

# Display JJ working copy change info in prompt
jj_prompt_info() {
  # Skip if opted out via marker directory
  [[ -d .jj/use-git-prompt ]] && return 1

  local jj_info
  jj_info=$(jj log --ignore-working-copy --no-graph -r @ -T '
    separate("\n",
      change_id.shortest(),
      bookmarks.join(" "),
      if(empty, "empty"),
      if(conflict, "conflict"),
      if(!empty && description.first_line() == "", "nodesc"),
    )
  ' 2>/dev/null) || return 1

  local -a lines=("${(@f)jj_info}")
  local change_id=$lines[1]
  local bookmark=$lines[2]
  local empty=$lines[3]
  local conflict=$lines[4]
  local nodesc=$lines[5]

  local result=" %{$fg_bold[green]%}${change_id}%{$reset_color%}"
  [[ -n $bookmark ]] && result+=" %{$fg[cyan]%}${bookmark}%{$reset_color%}"
  [[ $conflict == "conflict" ]] && result+=" %{$fg_bold[red]%}✗%{$reset_color%}"
  [[ $empty == "empty" ]] && result+=" %{$fg[yellow]%}○%{$reset_color%}"
  [[ $nodesc == "nodesc" ]] && result+=" %{$fg[magenta]%}✎%{$reset_color%}"

  echo "$result"
}

# Try JJ first (JJ repos also have .git/), fall back to git
vcs_prompt_info() {
  jj_prompt_info || git_prompt_info
}

setopt promptsubst

# Allow exported PS1 variable to override default prompt.
PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(vcs_prompt_info) %# '

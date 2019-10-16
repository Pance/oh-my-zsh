#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}

# Pretty log messages
function _git_log_prettily(){
if ! [ -z $1 ]; then
  git log --pretty=$1
fi
}
compdef _git _git_log_prettily=git-log

# Warn if the current branch is a WIP
function work_in_progress() {
if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
  echo "WIP!!"
fi
}

#
# Aliases
# (sorted alphabetically)
#

alias g='git'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -m'
alias gc!='git commit -v --amend'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gps='git push'
alias gpl='git pull'
alias gs='git status'
alias gm='git merge'

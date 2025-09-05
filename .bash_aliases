alias cls='clear -x'
alias clip='clip.exe'

alias ga='git add'
alias gap='git add --patch'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcl='git clone'
gcm() { git commit --message "$*"; }
alias gp='git push'
alias gs='git status'
alias gu='git pull'

alias '..'='cd ..'

please() {
  sudo $(history -p !!)
}

alias s='git status'
alias q='git pull'
alias Q='git push'

function mt() {
  local source=$(current_branch)
  git checkout $1
  git pull
  git merge $source
  git push
  git checkout $source
}
# git把当前分支合并到目标分支

# mergeTo test
function mt(){
  local source=$(current_branch)
  git checkout $1
  git pull
  git merge $source
  git push
  git checkout $source
}
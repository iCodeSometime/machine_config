# Defines various convenience commands for git.

# Commit and push with the given commit message.
# Used for small commits that don't need a detailed message.
function gpush () {
  git commit -am $1
  git push
}

# Allows overriding git commands.
# Git aliases are not flexible enough to do what I want.
function new_git () {
  cmd=$1
  old_git=$(whence -p git)  
  if [ "$cmd" '==' "log" ]; then
    $old_git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  elif [ "$cmd" '==' "rm" ]; then
    $old_git rm --cached
  else
    $old_git "$@"
  fi
  
}
alias git=new_git

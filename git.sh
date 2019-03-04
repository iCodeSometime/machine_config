# Defines various convenience commands for git.

# Commit and push with the given commit message.
# Used for small commits that don't need a detailed message.
function gpush () {
  git commit -am $1
  git push
}

if [ -f $config_dir/.git-completion.sh ]; then
  . $config_dir/git-completion.sh
fi

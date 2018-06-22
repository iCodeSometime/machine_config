# Setup
config_location=$(cat ~/.machine_config_location)

# Settings
set -o noclobber

# Set default Editor
export EDITOR=emacs
export VISUAL=$EDITOR

# Personal aliases
alias e=$VISUAL

# Personal Functions
function mkcd () {
  mkdir $1;
  cd $1
}

function gpush () {
  git commit -am $1
  git push
}

function zshrc {
  e $config_location
  source $config_location
  pushd $(dirname $config_location) > /dev/null
  gpush 'automated commit'
  popd > /dev/null
}

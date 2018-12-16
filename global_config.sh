# Setup
config_location=$(cat ~/.machine_config_location)
config_dir=$(dirname $config_location)

# Settings
set -o noclobber
unsetopt autopushd

# Set default Editor
export EDITOR=emacs
export VISUAL=$EDITOR
export LESS="-F -X $LESS"
export dev_env=true
export DATABASE_URL=postgres://localhost

# Path
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/metasploit-framework/bin:$PATH

# Personal aliases
alias e=$VISUAL
alias sudo='sudo -H '

# Personal Functions
function mkcd () {
    mkdir $1 &&  cd $1
}

function cleare() {
    rm **/*~
}

# Add convenience commands for git.
source $config_dir/git.sh

# Add convenience commands for editing machine_config.
source $config_dir/config_editing.sh

pullrc

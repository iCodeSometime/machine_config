# Setup
config_location=$(cat ~/.machine_config_location)
config_dir=$(dirname $config_location)

# Fix GPG
export GPG_TTY=$(tty)

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

# Aliases
alias e=$VISUAL
alias sudo='sudo -H -E '
alias cleard='rm -rf * '

# Small Functions
function mkcd () {
    mkdir $1 && cd $1
}

# Add convenience commands for git.
source $config_dir/git.sh

# Add convenience commands for editing machine_config.
source $config_dir/config_editing.sh

pullrc

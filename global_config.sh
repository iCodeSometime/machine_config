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
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:~/programming/libsource/flutter/bin
export PATH=~/bin:$PATH

# Aliases
alias e=$VISUAL
alias sudo='sudo -H -E '
alias cleard='rm -rf * '
alias nuget='mono ~/bin/mono/nuget.exe '
alias arg_last='${@:$#}'
alias arg_all_but_last='${*%${!#}}'

# Small Functions
function mkcd () {
    mkdir $1 && cd $1
}

function replace () {
    TFILE=`mktemp --tmpdir tfile.XXXXX`
    trap "rm -f $TFILE 0 1 2 3 15"
    sed arg_all_but_last arg_last > "$TFILE"
    cat "$TFILE" > arg_last
}

# Add convenience commands for git.
source $config_dir/git.sh

# Add convenience commands for editing machine_config.
source $config_dir/config_editing.sh

pullrc

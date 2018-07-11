# This file defines various convenience commands for editing the machine_config

function confDir {
  pushd $(dirname $config_location) > /dev/null
}

function restoreDir {
    popd > /dev/null
}

function pullrc {
  confDir
  git pull origin master
  restoreDir
}

function pushrc {
  source $config_location
  pullrc  
  confDir
  gpush 'automated commit'
  restoreDir
}

function editrc {
  e $config_location
  pushrc  
}

function addrc {
  echo "$(!!)" > $config_location
  pushrc
}

function pullrc {
  pushd $(dirname $config_location) > /dev/null
}

# This file defines various convenience commands for editing the machine_config

function pushrc {
  source $config_location
  pushd $(dirname $config_location) > /dev/null
  gpush 'automated commit'
  popd > /dev/null
}

function editrc {
  e $config_location
  pushrc  
}

function addrc {
  echo "$(!!)" > $config_location
  pushrc
}
    

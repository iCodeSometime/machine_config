# This file defines various convenience commands for editing the machine_config
function pullrc {
    (cd $config_dir && git pull)
}

function pushrc {
    (cd $config_dir && gpush 'automated commit')
}

function editrc {
    e $config_location
    pushrc  
}

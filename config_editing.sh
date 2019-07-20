# This file defines various convenience commands for editing the machine_config
function pullrc {
    (cd $config_dir && git pull >/dev/null 2>&1)
}

function pushrc {
    (cd $config_dir && gpush 'automated commit' >/dev/null 2>&1)
}

function editrc {
    e $config_location
    pushrc  
}

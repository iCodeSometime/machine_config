project_url="https://github.com/kennycoc/machine_config"

function offer_escape {
  while true; do
    read -p "Continue? (Y/n)" response
    case $response in
         "" ) break;; 
      [Yy]* ) break;;
      [Nn]* ) exit;;
          * ) echo "Either answer yes or no, or type  nothing."
    esac
  done
}

function alert_status () {
  if [ $1 -eq 0 ]; then
    echo "$2 completed successfully"
  else
    echo "$2 did not succeed."
    echo "Please open an issue at $project_url with the error received."
  fi
}
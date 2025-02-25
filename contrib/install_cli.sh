 #!/usr/bin/env bash

 # Execute this file to install the sallmon cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Sallmon-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Sallmon-Qt.app/Contents/MacOS/sallmond /usr/local/bin/sallmond
 sudo ln -s ${LOCATION}/Sallmon-Qt.app/Contents/MacOS/sallmon-cli /usr/local/bin/sallmon-cli

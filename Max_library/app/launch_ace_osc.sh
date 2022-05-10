#!/bin/bash
# launch_dyci2_agents.sh

eval `/usr/libexec/path_helper -s`

SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SERVER_PYTHON_PATH="${SCRIPT_DIRECTORY}/../../Python_library/OSC_run.py"
#SERVER_APP_PATH="${SCRIPT_DIRECTORY}/LaunchDyci2Agents.app/Contents/MacOS/LaunchDyci2Agents"
SERVER_APP_PATH="${SCRIPT_DIRECTORY}/LaunchDyci2Agents"

echo "Mode = $1"

if [ $1 = "python2" ]
then
	var=$(which python)
	echo "Python 2 interpreter = $var"
	echo "--> Try again, Chord is now using python3 !"
elif [ $1 = "python3" ]
then
	echo "--> Launching a server using python3"
	var=$(which python3)
	echo "Python 3 interpreter = $var"
	echo "Launching Chord Python3 server..."
	python3 $SERVER_PYTHON_PATH --server_address $2  --receive_port $3 --send_port $4
	#$var $SERVER_PYTHON_PATH $1
elif [ $1 = "app" ]
then
	echo "--> Launching a server using Chord app"
	#$SERVER_APP_PATH $1
else
   echo "--> Warning: accepted parameters = python3 and app"
fi
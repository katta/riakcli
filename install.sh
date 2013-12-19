#! /usr/bin/env bash

cp -f .riakclirc $HOME/.riakclirc
echo "INFO: Created '.riakclirc' at '$HOME', edit this file to change the riak server configuration"

if [ ! -f /usr/local/bin/riakcli ]; then
	ln -sf $PWD/riakcli /usr/local/bin/riakcli
	echo "INFO: 'riakcli' added to '/usr/local/bin'"
fi

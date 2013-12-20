#! /usr/bin/env bash

cp -f .riakclirc $HOME/.riakclirc
echo "INFO: Created '.riakclirc' at '$HOME', edit this file to change the riak server configuration"

if [ ! -f /usr/local/bin/riakcli ]; then
	ln -sf $PWD/riakcli /usr/local/bin/riakcli
	echo "INFO: 'riakcli' added to '/usr/local/bin'"
fi


platform=`uname`
bash_completion_dir="/etc/bash_completion.d"
if [[ "${platform}" == 'Linux' ]]; then
	bash_completion_dir=/etc/bash_completion.d
elif [[ "${platform}" == 'Darwin' ]]; then
	bash_completion_dir=/usr/local/etc/bash_completion.d
fi

cp -f riakcli_bashcompletion ${bash_completion_dir}/riakcli_bashcompletion
echo "INFO: Installing bash_completion for riakcli in to ${bash_completion_dir}"
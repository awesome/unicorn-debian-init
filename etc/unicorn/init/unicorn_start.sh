#!/bin/bash
echo $PATH | grep $HOME/.rvm/bin > /dev/null 2>&1
if [ $? -ne 0 ] ; then
	PATH=$PATH:$HOME/.rvm/bin
fi
source $HOME/.rvm/scripts/rvm
bundle exec unicorn -c config/unicorn.rb -E $1 -D

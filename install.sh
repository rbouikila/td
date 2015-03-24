#! /usr/bin/env bash

todo_file=~/todo/inbox.md

if [[ ! -f $todo_file ]]; then
	mkdir -p $(dirname "$todo_file")
	echo Created dir $(dirname "$todo_file")
fi

cat << EOF >> ~/.baskrc
## Autogenerated - change what you want ##
todo_file=$todo_file
color_reset='\033[0m'
color_todo='\033[01;31m'
color_done='\033[01;32m'
color_pending='\033[01;33m'
color_status='\033[01;34m' 
EOF

echo "I put your config in ~/.baskrc"

ln -s $(pwd)/bask.sh /usr/local/bin/bask
echo "A symlink to baks.sh was added to /usr/local/bin/"


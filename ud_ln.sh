#! /usr/bin/bash

#update file from github and make hard link to your config directory

nvim_path="${HOME}/.config/nvim"
ln_cmd='ln -f'

function lnr() {
	#a function to make hardlinked_subtree
	#${1}:from path , ${2}:to path , ${3}:ln_cmd

	if test -d ${1}; then
		for file in `ls ${1}` ; do
			mkdir -p ${2}
			lnr ${1}/${file} ${2}/${file} "${3}"
			done	
	
	elif test -f ${1}; then
		 ${3} ${1} ${2}
	fi		
}

#git pull

lnr . ${nvim_path} "${ln_cmd}"

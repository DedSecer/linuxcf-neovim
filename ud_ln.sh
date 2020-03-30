#! /usr/bin/bash

#update file from github and make hard link to your config directory

nvim_path=~/.config/nvim
ln_cmd='ln -i'

git pull

mkdir -p ${nvim_path}
${ln_cmd} ./init.vim ./coc-settings.json ${nvim_path}/

mkdir -p ${nvim_pat}h/autoload
${ln_cmd} ./autoload/plug.vim ${nvim_path}/autoload

ps_path=plugged_scripts
mkdir -p ${nvim_path}/${ps_path}
for file in `ls ./${ps_path}`  
do
	${ln_cmd} "./${ps_path}/${file}"  "${nvim_path}/${ps_path}/"
done	



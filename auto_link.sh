#! /usr/bin/bash
nvim_path=~/.config/nvim

mkdir -p ${nvim_path}
ln -i ./init.vim ./coc-settings.json ${nvim_path}/

mkdir -p ${nvim_pat}h/autoload
ln -i ./autoload/plug.vim ${nvim_pat}h/autoload

ps_path=plugged_scripts
mkdir -p ${nvim_path}/${ps_path}
for file in `ls ./${ps_path}`  
do
	ln -i "./${ps_path}/${file}"  "${nvim_path}/${ps_path}/"
done	



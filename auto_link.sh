#! /usr/bin/bash
vim_path=~/.config/nvim

mkdir -p $nvim_path
ln ./init.vim ./coc-settings.json $nvim_path/

mkdir -p $nvim_path/autoload
ln ./autoload/plug.vim $nvim_path/autoload

ps_path=plugged_scripts
mkdir -p ${nvim_path}/${ps_path}
for file in `ls ./${ps_path}`  
do
	ln "./${ps_path}/${file}"  "${nvim_path}/${ps_path}/"
done	



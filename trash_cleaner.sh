#!/bin/bash

##Script ejecutado para la limpieza del trash bajo ciertos periodos programado en funcion del makefile con relacion al crontab.
##

logMaquinaNoValida="Error de maquina no conocida - "$date
nombreMaq="$(uname -s)"
flag=0
case "${nombreMaq}" in
    Linux*)     if [ -d ~/.local/share/Trash/ ];then
			cd ~/.local/share/Trash/
			flag=1
		fi;; 
    Darwin*)    if [ -d cd ~/Trash/ ];then
			cd ~/.Trash/
			flag=1
		fi;;
esac
if [ $flag -eq 1 ];then
	for z in *; do
		yes | rm -ir $z
	done
fi

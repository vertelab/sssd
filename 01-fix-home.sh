#!/bin/bash

## Bind /opt/user/snap to home/snap
if [ ! -d /opt/$USER ]
then
 sudo mkdir -p /opt/$USER/snap /opt/$USER/Hämtningar
 sudo chown -R $USER:$USER /opt/$USER
fi
if mount | awk '{if ($3 == "/home/'$USER'/snap") { exit -1 }} ENDFILE{exit 0}'; then
	sudo mount --bind /opt/$USER/snap /home/$USER/snap
fi





## Publikt och Hämtningar symbolisk länk
if [ ! -h /home/$USER/Publikt ]
then
   [ -d /home/$USER/Publikt ] && mv /home/$USER/Publikt /home/$USER/Publikt- 
   ln -s /home/Publikt /home/$USER/Publikt
fi

if [ ! -h /home/$USER/Hämtningar ]
then 
    [ -d /home/$USER/Hämtningar ] && mv /home/$USER/Hämtningar /home/$USER/Hämtningar-
    ln -s /opt/$USER/Hämtningar /home/$USER/Hämtningar
fi

#!/bin/bash

## Bind /opt/user/snap to home/snap
if [ ! -d /opt/$USER ]
then
 sudo mkdir -p /opt/$USER/snap
 sudo chown -R $USER:$USER /opt/$USER
fi
if mount | awk '{if ($3 == "/home/'$USER'/snap") { exit -1 }} ENDFILE{exit 0}'; then
	sudo mount --bind /opt/$USER/snap /home/$USER/snap
fi





## Publikt symbolisk länk
if [ ! -h /home/$USER/Publikt ]
then
   ln -s /home/Publikt /home/$USER/Publikt
fi

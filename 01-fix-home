#!/bin/bash

## Bind /opt/user/snap to home/snap
if [ ! -d /opt/$USER ]
then
 sudo mkdir -p /opt/$USER/snap
 sudo chown -R $USER:$USER /opt/$USER
fi
sudo mount --bind /opt/$USER/snap /home/$USER/snap

## Publikt symbolisk länk
if [ ! -h /home/$USER/Publikt ]
then
   ln -s /home/Publikt /home/$USER/Publikt
fi

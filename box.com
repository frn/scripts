#!/bin/sh

BOX='/mnt/box.com'

test=`mount | grep /mnt/box.com`


if [ -z "$test" ]
then

mount ${BOX}

else

umount ${BOX}

fi

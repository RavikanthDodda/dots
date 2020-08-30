#!/bin/bash

ismouse=$(xinput | grep -c 'USB GAMING MOUSE')
id=$(xinput | grep 'Touchpad' | egrep -o  'id=[0-9]+' | egrep -o '[0-9]+')
if [ $ismouse -gt 0 ]
then
	xinput --disable $id
else
	xinput enable $id
fi

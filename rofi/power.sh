
#!/bin/bash

OPTIONS="\tShutdown\n\tLogout\n\tReboot"

option=`echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t'`
if [ "$@" ]
then
    case $@ in
        *Logout)
            i3-msg exit
            ;;
        *Shutdown)
            shutdown now
            ;;
        *Reboot)
            reboot
            ;;
    esac
else
    echo -e $OPTIONS
fi

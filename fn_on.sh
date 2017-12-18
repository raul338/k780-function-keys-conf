#!/bin/sh


TOOL="$(dirname $0)/k780_conf"
DEV="$(ls /sys/class/hidraw/ -l | grep 046D:B33B | grep -o 'hidraw[0-9]*$')"


if test -n "$DEV" && (test -z "$1" || test "/dev/$DEV" = "$1")
then
    echo "Found k780 at $DEV"
    $TOOL -d "/dev/$DEV" -f on
fi



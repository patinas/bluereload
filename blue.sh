#! /usr/bin/bash

device="F0:2F:74:6A:FC:2B"

if bluetoothctl info "$device" | grep 'Connected: yes' -q; 

then bluetoothctl disconnect "$device" && bluetoothctl connect "$device"

fi


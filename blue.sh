#! /usr/bin/bash

device="08:EB:ED:D7:AF:27"

if bluetoothctl info "$device" | grep 'Connected: yes' -q; 

then bluetoothctl disconnect "$device" && bluetoothctl connect "$device"

fi


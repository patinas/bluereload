#! /usr/bin/bash

device="74:45:CE:EA:69:B4"

if bluetoothctl info "$device" | grep 'Connected: yes' -q; 

then bluetoothctl disconnect "$device" && bluetoothctl connect "$device"

fi


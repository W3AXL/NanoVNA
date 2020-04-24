#!/bin/bash
echo "Building and loading to DFU device"
make
./dfu-util-0.9-win64/dfu-util.exe -d 0483:df11 -a 0 -s 0x08000000:leave -D build/ch.bin

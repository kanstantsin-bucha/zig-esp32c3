#!/bin/bash

# to use this you require to install llvm on the system
set -e

deviceProt=/dev/tty.usbmodem2101

clear
zig build 
llvm-objcopy -O binary ./zig-out/bin/esp-bringup ./zig-out/bin/firmware.bin
esptool.py \
  --port $deviceProt \
  --baud 115200 \
  write_flash 0x00000000 zig-out/bin/firmware.bin \
  --verify
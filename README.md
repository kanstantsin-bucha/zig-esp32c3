# ESP MicroZig Package

## Flashing

1. install the llvm using
```
chmod +x && ./install-llvm.sh
```
2. 
* Connect USB port of ESP32C3 to Mac. Tap reset button.
* List all available ports by `ls /dev/*tty*`. Make sure you see the ESP32C2 port there.
* Update `perform-flash.sh`with the correct port of ESP32C2.
```
deviceProt=/dev/tty.usbmodem2101
```
* Use shell script to flash
```
./perform-flash.sh
```

## [WIP]

SVD is copied from https://github.com/esp-rs/esp-pacs

== What version of Zig to use

Right now we are following https://ziglang.org/download/[master], but once 0.11.0 is released, we will be switching to the latest stable version of Zig.








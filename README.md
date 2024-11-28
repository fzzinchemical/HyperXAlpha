## Differences in this fork

This fork has:

- Removed the PulseAudio requirement
- Added the "Never" sleep option
- Added some logging

## Thanks

A huge thanks to [IllicitFrog](https://github.com/IllicitFrog) for their original implementation of this application. Without their work I would not have gotten inspired to reverse engineer the way the HyperX Cloud Alpha Wireless headset worked.

Thanks to [Stroopwafe1](https://github.com/Stroopwafe1) for delivering an updated fork and delivering Installation instructions in the `README.md`. Also, big thanks for the additional features that were implemented.

## Original readme of the original author

Simple way of controlling hyperx alpha headset, with pulseaudio controls included, Mit do what you want will not be maintained

## Orignial readme of Stroopwafe1

Since an updated readme was procured by Stroopwafe1, I used it and added some content, like, Issues.

# HyperX Cloud Alpha Wireless Application for Linux

This application allows you to manage your HyperX Cloud Alpha Wireless headset in Linux using a GUI application.

## Requirements

- CMake
- WxWidgets
- HIDAPI

## Installation Instructions

First of all, make sure you have the above requirements, you can install them with your distro's package manager.
Then, it's very easy to clone the repo and build the code

```bash
$ git clone https://github.com/Stroopwafe1/HyperXAlpha.git
$ cd HyperXAlpha
$ cmake -S . -B build
$ cmake --build build
```
## Issues

This can be updated if additional issues are found.

### Headset Unavailable, when launching the App

The following fix worked for me:

1. Create a new udev rule file:

`sudo nano /etc/udev/rules.d/99-hyperx.rules`

2. Add the following content to the file:

`SUBSYSTEM=="usb", ATTRS{idVendor}=="03f0", ATTRS{idProduct}=="098d", MODE="0666"`

3. Reload the udev rules:

`sudo udevadm control --reload-rules
sudo udevadm trigger`

4. Unplug and replug the HID device.
5. Finally try running the program again.
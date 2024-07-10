## Differences in this fork

This fork has:

- Removed the PulseAudio requirement
- Added the "Never" sleep option
- Added some logging

## Thanks

A huge thanks to [IllicitFrog](https://github.com/IllicitFrog) for their original implementation of this application. Without their work I would not have gotten inspired to reverse engineer the way the HyperX Cloud Alpha Wireless headset worked.

## Original readme of the original author

Simple way of controlling hyperx alpha headset, with pulseaudio controls included, Mit do what you want will not be maintained

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

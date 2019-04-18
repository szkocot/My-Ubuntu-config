# My Ubuntu post-installation config scripts
It makes configuration of VMs and main OS clean install less painfull.

## Compatibility
Tested on Ubuntu 18.04, 18.10 and 19.04.

## List of content
### ./config
* git, build-essential, cmake etc.
* apps: chrome, vscode, spotify, htop, slack, libreoffice, snap, qnapi
* working brother dcp-j315w printer&scanner
* basic gnome appearance tweaks

### ./av-tweaks
* working apt-x bt codec & hq audio

### ./xps-15
* tlp
* dell power utilities
* undervolt

## gnome-extensions-list.txt
Just a list of my favourite and most frequently used gnome extensions.

## Post-install tweaks
* libinput - after reboot/log out: `libinput-gestures-setup autostart` and `libinput-gestures-setup start`.
* quiet xps:   
   * `sudo smbios-thermal-ctl --set-thermal-mode quiet`
   * `TLP_DEFAULT_MODE=BAT` and `TLP_PERSISTENT_DEFAULT=1` in /etc/default/tlp
* no audio noise:
   * `SOUND_POWER_SAVE_ON_BAT=0`  in /etc/default/tlp
   * To turn timer-based scheduling off add `tsched=0` in /etc/pulse/default.pa: `load-module module-udev-detect tsched=0`. Then restart the PulseAudio server: `pulseaudio -k` and `pulseaudio --start`.

## Thanks to:
https://github.com/JackHack96/dell-xps-9570-ubuntu-respin

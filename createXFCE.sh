setup-devd udev
apk add dbus
rc-service dbus start
apk add mesa-dri-gallium
setup-xorg-base
setup-desktop xfce

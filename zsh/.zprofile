export EDITOR=nvim

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
  exec dbus-run-session niri
fi

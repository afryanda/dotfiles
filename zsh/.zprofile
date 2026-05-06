export _JAVA_AWT_WM_NONREPARENTING=1
export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PATH="$HOME/.config/composer/vendor/bin:$HOME/.local/bin:$PATH"
export EDITOR=nvim
export TERMINAL=alacritty

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
  exec dbus-run-session -- start-hyprland
fi

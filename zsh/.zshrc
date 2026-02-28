# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/afryanda/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"

# yazi wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# ls
alias ls='eza --icons'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls --tree'

# git
alias glo='git log --oneline'
alias gst='git status'
alias gc='git commit'
alias lg=lazygit
alias gd='git diff'
alias ga='git add'

alias ua-drop-caches='sudo paccache -rk3; paru -Sc --aur --noconfirm'
alias ua-update-all='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --protocol https --entry-country SG --save=$TMPFILE artix \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && ua-drop-caches \
      && paru -Syyu --noconfirm'
alias ff='fastfetch'
alias off='loginctl poweroff'
alias restart='loginctl reboot'
alias vim=nvim
alias bt=bluetoothctl

alias artisan='php artisan'
alias shadcn='npx shadcn-vue@latest'
alias localip="ip addr show usb0 | grep 'inet ' | awk '{print \$2}' | cut -d'/' -f1"
export PATH="/home/afryanda/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/afryanda/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

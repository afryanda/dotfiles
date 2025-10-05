# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
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
eval "$(fnm env --use-on-cd --shell zsh)"

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
alias lla='ls -la'
alias tree='ls --tree'

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
alias nv=nvim
alias bt=bluetoothctl
alias todo='nvim TODO.md'

alias art='php artisan'

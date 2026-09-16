if status is-interactive

set -x XDG_DATA_DIRS /usr/share:/usr/local/share

set -U fish_greeting

alias ls="lsd"
alias lsl="lsd -la"
alias ct="bat"

fastfetch
echo ""

end

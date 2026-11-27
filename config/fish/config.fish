if status is-interactive

export __GL_SHADER_DISK_CACHE_SIZE=10737418240
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1

set -x XDG_DATA_DIRS /usr/share:/usr/local/share

set -U fish_greeting

alias ls="lsd"
alias lsl="lsd -la"
alias ct="bat"

fastfetch
echo ""

end

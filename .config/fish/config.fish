if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

alias ls="exa -l"

alias rr="bash ~/.conres/roll.sh"

alias out="pkill -KILL -u viz"

alias sw="time cat"

alias qr="~/.conres/qr.sh"

cat ~/.conres/dprkflag.ansi

#~/.conres/flags/showrandomflag.sh

alias say=".conres/say.sh"

alias cgroff="~/.conres/czechgroff.sh"

alias pass="~/.conres/pass.sh"

starship init fish | source

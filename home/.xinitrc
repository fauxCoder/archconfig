#!\bin\sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# resolution setting
xrandr --output Virtual-1 --mode 1680x1050 --rate 60

# dvorak
setxkbmap -model pc104 -layout us -variant dvorak

# set left-pointer
xsetroot -cursor_name left_ptr &

# stop screen blanking
xset s off -dpms &

# select a background
~/bg/rotate.fish

exec xmonad

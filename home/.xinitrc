#!\bin\sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# dvorak
setxkbmap -model pc104 -layout us -variant dvorak

# set left-pointer
xsetroot -cursor_name left_ptr &

# stop screen blanking
xset s off -dpms &

exec xmonad

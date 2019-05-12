#!\bin\sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# set left-pointer
xsetroot -cursor_name left_ptr &

# stop screen blanking
xset s off -dpms &

exec xmonad

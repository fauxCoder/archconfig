#!/usr/bin/env fish

set DIR (cd (dirname (status -f)); and pwd)

feh --bg-fill --randomize --no-fehbg $DIR/*_selected

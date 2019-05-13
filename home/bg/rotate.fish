#!/usr/bin/env fish

set DIR (cd (dirname (status -f)); and pwd)

nitrogen --head=0 --set-zoom-fill --set-color=#111111 --random $DIR/*_selected

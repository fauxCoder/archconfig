#!/usr/bin/env fish

pushd home
set home_files (find . -type f)
popd

for f in $home_files
    set file (echo $f | string replace ./ "")
    if test -e ~/$file
        cp ~/$file home/$file
    end
end

#!bin/sh
for file in ./*.*
do
    if test -f $file
    then
        # ffmpeg -i $file -c:v libx264 -pix_fmt yuv420p ${file.mp4}
        echo ${file/.avi/.mp4}
    fi
done
if ! status is-interactive
    exit
end

abbr --add android-hq scrcpy --stay-awake --turn-screen-off

abbr --add android \
    scrcpy \
        --stay-awake --turn-screen-off \
        --max-size 1024 --video-bit-rate 4M --max-fps 30 --no-audio

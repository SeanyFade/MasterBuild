#!/bin/bash
MUSIC="/home/seanyfade/fever/fever.mp3"
VIDEO="/home/seanyfade/fever/slides/Fever.mp4" # Make sure the name matches!

# --loop-file=inf: The magic command to keep it looping forever
# --audio-file: Overlays your Yakuza music
# --hwdec=auto: Uses your GPU so your C++ coding stays fast in the background
mpv --loop-file=inf --no-audio /home/seanyfade/fever/slides/Fever.mp4 &
mpv /home/seanyfade/fever/fever.mp3
    --audio-file="
    --force-media-title="FEVER_TIME_WINDOW" \
    --no-osc --no-osd-bar \
    --hwdec=auto \
    "$VIDEO"

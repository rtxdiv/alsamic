#!/bin/bash

status=$(amixer get Capture | grep -o '\[on\]\|\[off\]' | head -1)
if [[ "$status" == "[on]" ]]; then
    amixer set Capture toggle
    aplay /usr/share/microphone/mute.wav 2>/dev/null
else
    amixer set Capture toggle
    aplay /usr/share/microphone/unmute.wav 2>/dev/null
fi

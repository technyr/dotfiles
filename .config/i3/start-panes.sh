#!/bin/bash

i3-msg 'workspace 1; split v; exec kitty'
sleep 1

i3-msg 'focus left; split h; exec kitty'
sleep 1

i3-msg 'focus right; split h; exec kitty'

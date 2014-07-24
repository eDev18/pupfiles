#!/bin/sh
FONT="Tamsyn:6"
BG_COLOR="#282a2e"
CURSOR_BG_COLOR="#3f3f3f"
CURSOR_FG_COLOR="#d64937"

dmenu_run -q -l 5 -w 250 -y 18 -p ">" -fn "$FONT" -nb "$BG_COLOR" -sb "$CURSOR_BG_COLOR" -sf "$CURSOR_FG_COLOR"

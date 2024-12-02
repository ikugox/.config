#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
  -theme $SDIR/rofi/styles.rasi \
  <<<" Default| Nord| Gruvbox| Adapta| Cherry| Snazzy|")"
case "$MENU" in
*Default) "$SDIR"/styles.sh --default ;;
*Nord) "$SDIR"/styles.sh --nord ;;
*Gruvbox) "$SDIR"/styles.sh --gruvbox ;;
*Adapta) "$SDIR"/styles.sh --adapta ;;
*Cherry) "$SDIR"/styles.sh --cherry ;;
*Snazzy) "$SDIR"/styles.sh --snazzy ;;
esac

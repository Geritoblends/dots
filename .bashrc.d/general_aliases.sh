alias battery="upower -i $(upower -e | grep BAT) | grep -E \"percentage\""

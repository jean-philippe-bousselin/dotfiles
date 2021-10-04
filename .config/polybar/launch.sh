#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
LOG_FILE=/tmp/polybar-top.log
echo "===================== RELOADING POLYBARS ==================" >> $LOG_FILE
polybar mainbar-i3 2>&1 | tee -a $LOG_FILE & disown

echo "Polybar launched..."

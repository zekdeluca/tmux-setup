#!/bin/sh

# Base input variables
PROJECT_NAME="cockpit"
PROJECT_PATH=~/Documents/dev

# Create session
tmux new-session -n terminal -x $(tput cols) -y $(tput lines) -d -c $PROJECT_PATH -s $PROJECT_NAME

# Create windows and split panes
tmux split-window -c $PROJECT_PATH -h -p 50
tmux split-window -c $PROJECT_PATH -v -p 50 -d
tmux split-window -c $PROJECT_PATH -h -p 50
tmux split-window -c $PROJECT_PATH -v -p 50
tmux select-pane -L
tmux split-window -c $PROJECT_PATH -v -p 50
tmux select-pane -L
tmux split-window -c $PROJECT_PATH -v -p 33 -d
tmux split-window -c $PROJECT_PATH -v -p 50 -d
tmux split-window -c $PROJECT_PATH -h -p 50 -d
tmux new-window -c $PROJECT_PATH -n vim -d

# Run startup commands
tmux send-keys -t ":terminal.0" 'echo "LEFT-COLUMN-TOP-LEFT"' Enter
tmux send-keys -t ":terminal.1" 'echo "LEFT-COLUMN-TOP-RIGHT"' Enter
tmux send-keys -t ":terminal.2" 'echo "LEFT-COLUMN-MIDDLE"' Enter
tmux send-keys -t ":terminal.3" 'echo "LEFT-COLUMN-BOTTOM"' Enter
tmux send-keys -t ":terminal.4" 'echo "RIGHT-COLUMN-TOP-TOP-LEFT"' Enter
tmux send-keys -t ":terminal.5" 'echo "RIGHT-COLUMN-TOP-BOTTOM-LEFT"' Enter
tmux send-keys -t ":terminal.6" 'echo "RIGHT-COLUMN-TOP-TOP-RIGHT"' Enter
tmux send-keys -t ":terminal.7" 'echo "RIGHT-COLUMN-TOP-BOTTOM-RIGHT"' Enter
tmux send-keys -t ":terminal.8" 'echo "RIGHT-COLUMN-BOTTOM"' Enter
tmux send-keys -t ":vim.0" 'vim' Enter

# Attach to session
tmux -2 attach-session -c $PROJECT_PATH -t $PROJECT_NAME

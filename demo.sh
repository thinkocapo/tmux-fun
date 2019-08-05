

## need the directory of react, and directory of flask
## need run a command inside of react, and run command inside of flask


# tmux new-session -s demos \; split-window -h\; send-keys -t 0 'top -u' C-m \; send-keys -t 1 'pstree | more' C-m

# TODO - put this into react.sh
tmux new-session -s demos \; 
tmux split-window -v\; 

# React ( Directory1 & Command1)
tmux send-keys -t 0 'cd ~/thinkocapo/react' C-m \;
tmux send-keys -t 0 'npm run deploy' C-m \;

# Flask ( Directory2 & Command2 )
tmux send-keys -t 1 'cd ~/thinkocapo/flask' C-m \;
tmux send-keys -t 1 'make deploy' C-m \;

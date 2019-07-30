
tmux new-session -s sysadmin \; split-window -v\; send-keys -t 0 'top -u' C-m \; send-keys -t 1 'pstree | more' C-m

# tmux new-session -s sysadmin \;
# tmux split-window -v \;
# tmux send-keys -t 0 'top -u' C-m \;
# tmux send-keys -t 1 'pstree | more' C-m \;


# TODO - select pane you want user to be active in, upon completion of script
# \; select-pane -t 0

